CREATE TABLE Movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    duration INT,
    language VARCHAR(50)
);

CREATE TABLE Shows (
    show_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    screen_id INT,
    start_time DATETIME,
    price DECIMAL(10, 2)
);

CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    show_id INT,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10, 2)
);

CREATE TABLE Screens (
    screen_id INT AUTO_INCREMENT PRIMARY KEY,
    theater_id INT,
    screen_number VARCHAR(10),
    seating_capacity INT
);

CREATE TABLE Seats (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,
    screen_id INT,
    seat_number VARCHAR(10),
    seat_type ENUM('Standard', 'Premium', 'VIP') DEFAULT 'Standard'
);

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    password VARCHAR(255)
);

CREATE TABLE Theaters (
    theater_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255),
    total_capacity INT
);




INSERT INTO Movies (title, genre, duration, language) VALUES 
('Inception', 'Sci-Fi', 148, 'English'),
('The Dark Knight', 'Action', 152, 'English'),
('Parasite', 'Thriller', 132, 'Korean'),
('Dangal', 'Drama', 161, 'Hindi'),
('Pather Panchali', 'Drama', 125, 'Bengali');


INSERT INTO Theaters (name, location, total_capacity) VALUES 
('Star Cineplex', 'Bashundhara City, Dhaka', 500),
('Blockbuster Cinemas', 'Jamuna Future Park, Dhaka', 600),
('Lion Cinemas', 'Keraniganj, Dhaka', 400),
('Shyamoli Cinema', 'Shyamoli, Dhaka', 300),
('Silver Screen', 'Chittagong', 250);


INSERT INTO Screens (theater_id, screen_number, seating_capacity) VALUES 
(1, 'Hall-01', 100),
(1, 'Hall-02', 150),
(2, 'VIP-Screen', 50),
(3, 'Main-Hall', 200),
(5, 'Platinum-Screen', 80);



INSERT INTO Seats (screen_id, seat_number, seat_type) VALUES 
(1, 'A1', 'Standard'),
(1, 'A2', 'Standard'),
(1, 'H1', 'VIP'),
(3, 'V01', 'Premium'),
(5, 'P10', 'Premium');



INSERT INTO Shows (movie_id, screen_id, start_time, price) VALUES 
(1, 1, '2026-05-01 14:00:00', 500.00),
(2, 2, '2026-05-01 18:00:00', 600.00),
(3, 3, '2026-05-02 15:30:00', 1200.00),
(4, 4, '2026-05-02 20:00:00', 400.00),
(5, 5, '2026-05-03 11:00:00', 800.00);


INSERT INTO Users (name, email, phone, password) VALUES 
('Rahat Ahmed', 'rahat@email.com', '01711223344', 'hashed_pass_1'),
('Sumaiya Akter', 'sumaiya@email.com', '01822334455', 'hashed_pass_2'),
('Arif Hasan', 'arif@email.com', '01933445566', 'hashed_pass_3'),
('Nusrat Jahan', 'nusrat@email.com', '01544556677', 'hashed_pass_4'),
('Tanvir Islam', 'tanvir@email.com', '01655667788', 'hashed_pass_5');



INSERT INTO Bookings (user_id, show_id, total_price) VALUES 
(1, 1, 500.00),
(2, 2, 1200.00),
(3, 3, 1200.00),
(4, 5, 800.00),
(5, 1, 500.00);



SELECT * FROM `bookings`;
SELECT * FROM `movies`;
SELECT * FROM `shows`;
SELECT * FROM `screens`;
SELECT * FROM `seats`;
SELECT * FROM `users`;
SELECT * FROM `theaters`;