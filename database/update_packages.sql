USE wonderease;

-- Clear existing packages
TRUNCATE TABLE packages;

-- Insert packages with correct images
INSERT INTO packages (title, description, destination, price, duration, featured, image_url, is_special_offer, discount_badge, expiry_date) VALUES
('Bali Paradise', 'Experience the magic of Bali with pristine beaches, lush rice terraces, and vibrant culture.', 'Bali, Indonesia', 1299.00, 7, TRUE, 'assets/images/destinations/bali.jpg', FALSE, NULL, NULL),
('Paris Getaway', 'Explore the city of love with guided tours of iconic landmarks and authentic French cuisine.', 'Paris, France', 1499.00, 5, TRUE, 'assets/images/destinations/paris.jpg', FALSE, NULL, NULL),
('Tokyo Adventure', 'Immerse yourself in the blend of traditional culture and futuristic technology in Tokyo.', 'Tokyo, Japan', 1899.00, 8, TRUE, 'assets/images/destinations/tokyo.jpg', FALSE, NULL, NULL),
('Santorini Escape', 'Relax in the stunning white-washed villages overlooking the crystal-clear Aegean Sea.', 'Santorini, Greece', 1699.00, 6, TRUE, 'assets/images/destinations/santorini.jpg', FALSE, NULL, NULL),
('New York City', 'Experience the energy of the Big Apple with Broadway shows, iconic landmarks, and diverse cuisine.', 'New York, USA', 1599.00, 5, TRUE, 'assets/images/destinations/newyork.jpg', FALSE, NULL, NULL),
('Maldives Luxury', 'Indulge in luxury overwater bungalows and pristine beaches in this tropical paradise.', 'Maldives', 2499.00, 7, TRUE, 'assets/images/destinations/maldives.jpg', FALSE, NULL, NULL),
('Summer Special Bali', 'Book this Bali package for July or August and get 20% off!', 'Bali, Indonesia', 1299.00, 7, FALSE, 'assets/images/destinations/bali.jpg', TRUE, '20% OFF', DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY)),
('Free Hotel Upgrade', 'Book any 7+ day package and receive a complimentary hotel room upgrade.', 'Various', 1899.00, 7, FALSE, 'assets/images/destinations/paris.jpg', TRUE, 'FREE UPGRADE', DATE_ADD(CURRENT_DATE, INTERVAL 15 DAY)),
('Family Package', 'Kids under 12 stay and eat free with two paying adults!', 'Various', 1999.00, 7, FALSE, 'assets/images/destinations/newyork.jpg', TRUE, 'FAMILY', DATE_ADD(CURRENT_DATE, INTERVAL 20 DAY)); 