CREATE DATABASE sanastours_db;
USE sanastours_db;

CREATE TABLE Driver (
driver_id INT PRIMARY KEY,
driver_name VARCHAR(100) NOT NULL,
nic VARCHAR(50)  NOT NULL UNIQUE,
phone VARCHAR(50)  NOT NULL,
license_number VARCHAR(50)  NOT NULL UNIQUE,
license_expiry_date DATE NOT NULL,
driver_status VARCHAR(50)  NOT NULL DEFAULT 'Active'
);
 
CREATE TABLE Vehicle (
vehicle_id INT PRIMARY KEY,
registration_no VARCHAR(50) NOT NULL UNIQUE,
brand VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
vehicle_type VARCHAR(50) NOT NULL,
capacity INT NOT NULL,
vehicle_status VARCHAR(50) NOT NULL DEFAULT 'Available'
);

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

CREATE TABLE Trip (
trip_id	INT PRIMARY KEY,
booking_id INT NOT NULL,
vehicle_id INT NOT NULL,
driver_id INT NOT NULL,
departure_datetime DATETIME NOT NULL,
return_datetime DATETIME,
pickup_location VARCHAR(150),
dropoff_location VARCHAR(150),
trip_status VARCHAR(20) NOT NULL DEFAULT 'Scheduled',

CONSTRAINT fk_trip_booking
FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
ON DELETE CASCADE ON UPDATE CASCADE,
 
CONSTRAINT fk_trip_vehicle
FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
ON DELETE RESTRICT ON UPDATE CASCADE,
 
CONSTRAINT fk_trip_driver
FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Payment (
payment_id INT PRIMARY KEY,
booking_id INT NOT NULL,
amount DECIMAL (10, 2),
payment_date DATE,
reference_number VARCHAR(50),
payment_status VARCHAR(50),

CONSTRAINT fk_payment_booking
FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
ON DELETE CASCADE ON UPDATE CASCADE
);
