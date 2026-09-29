CREATE DATABASE sanastours_db;
USE sanastours_db;

CREATE TABLE Booking (
booking_id INT PRIMARY KEY,
customer_id INT NOT NULL,
package_id INT NOT NULL,
booking_date DATE,
number_of_people INT,
booking_status VARCHAR(50),

CONSTRAINT fk_booking_customer 
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
ON DELETE RESTRICT ON UPDATE CASCADE,

CONSTRAINT fk_booking_package 
FOREIGN KEY (package_id) REFERENCES TourPackage(package_id)
ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Payment (
payment_id INT PRIMARY KEY,
booking_id INT NOT NULL,
payment_date DATE,
amount DECIMAL (10, 2),
payment_status VARCHAR(50),
reference_number VARCHAR(50),

CONSTRAINT fk_payment_booking
FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
ON DELETE CASCADE ON UPDATE CASCADE
);
