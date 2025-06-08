<?php
require_once '../includes/auth.php';

// Check if user is logged in
if (!isLoggedIn()) {
    header('Location: ../auth/login.php');
    exit;
}

// Check if booking ID is provided
if (!isset($_GET['id'])) {
    header('Location: dashboard.php');
    exit;
}

$booking_id = (int)$_GET['id'];

// Get booking details and verify ownership
$conn = getDBConnection();
$stmt = $conn->prepare("
    SELECT b.*, p.title 
    FROM bookings b 
    JOIN packages p ON b.package_id = p.id 
    WHERE b.id = ? AND b.user_id = ?
");
$stmt->execute([$booking_id, $_SESSION['user_id']]);
$booking = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$booking) {
    header('Location: dashboard.php');
    exit;
}

// Only allow cancellation of pending bookings
if ($booking['status'] !== 'pending') {
    $_SESSION['error'] = 'Only pending bookings can be cancelled.';
    header('Location: dashboard.php');
    exit;
}

// Cancel the booking
try {
    $stmt = $conn->prepare("UPDATE bookings SET status = 'cancelled' WHERE id = ?");
    $stmt->execute([$booking_id]);
    
    // Create notification
    $stmt = $conn->prepare("
        INSERT INTO notifications (user_id, message)
        VALUES (?, ?)
    ");
    $stmt->execute([
        $_SESSION['user_id'],
        "Your booking for {$booking['title']} has been cancelled."
    ]);
    
    $_SESSION['success'] = 'Booking cancelled successfully.';
} catch (PDOException $e) {
    $_SESSION['error'] = 'Failed to cancel booking. Please try again.';
}

header('Location: dashboard.php');
exit; 