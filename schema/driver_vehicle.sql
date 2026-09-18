SHOW DATABASES;
CREATE DATABASE sanastours_db;
USE sanastours_db;

CREATE TABLE Driver (
driver_id INT PRIMARY KEY,
driver_name VARCHAR(100) NOT NULL,
license_number VARCHAR(50)  NOT NULL UNIQUE,
driver_status VARCHAR(20)  NOT NULL DEFAULT 'Active'
);
 
CREATE TABLE Vehicle (
vehicle_id INT PRIMARY KEY,
registration_no VARCHAR(20) NOT NULL UNIQUE,
vehicle_type VARCHAR(50) NOT NULL,
capacity INT NOT NULL,
vehicle_status VARCHAR(20) NOT NULL DEFAULT 'Available'
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