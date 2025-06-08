# WonderEase Travel Agency Management System

A comprehensive travel agency management system built with PHP and MySQL.

## Project Structure

```
wonderease/
├── assets/
│   ├── css/
│   │   ├── style.css
│   │   └── dashboard.css
│   ├── js/
│   │   └── main.js
│   └── images/
├── config/
│   └── database.php
├── includes/
│   ├── header.php
│   ├── footer.php
│   ├── functions.php
│   └── auth.php
├── admin/
│   ├── index.php
│   ├── packages.php
│   ├── bookings.php
│   ├── users.php
│   └── staff.php
├── staff/
│   ├── index.php
│   ├── bookings.php
│   └── support.php
├── user/
│   ├── dashboard.php
│   ├── bookings.php
│   ├── profile.php
│   └── support.php
├── database/
│   └── schema.sql
├── auth/
│   ├── login.php
│   ├── register.php
│   └── logout.php
├── index.php
└── README.md
```

## Features

1. User Authentication
   - Registration and login system
   - Role-based access (user, admin, staff)
   - Secure password handling

2. Customer Dashboard
   - Personal information management
   - Booking history
   - Trip management
   - Notifications

3. Booking System
   - Package browsing
   - Dynamic pricing
   - Booking management
   - Email confirmations

4. Admin Dashboard
   - Package management
   - User management
   - Booking oversight
   - Staff management

5. Staff Dashboard
   - Booking management
   - Support ticket handling
   - Internal notes

6. Customer Support
   - Contact form
   - Ticket system
   - Response management

7. Notifications
   - Real-time updates
   - Read/unread status
   - Timestamp tracking

## Setup Instructions

1. Clone the repository to your local machine
2. Import the database schema from `database/schema.sql`
3. Configure database connection in `config/database.php`
4. Start your local server (e.g., XAMPP)
5. Access the application through your web browser

## Requirements

- PHP 7.4 or higher
- MySQL 5.7 or higher
- Web server (Apache/Nginx)
- Modern web browser

## Security Features

- Password hashing using PHP's password_hash()
- Session management
- SQL injection prevention
- XSS protection
- CSRF protection

## Database Schema

The database includes the following main tables:
- users
- packages
- bookings
- support_messages
- notifications
- staff_notes

Detailed schema can be found in `database/schema.sql`

## License

MIT License 