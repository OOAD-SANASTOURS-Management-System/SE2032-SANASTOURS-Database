CREATE DATABASE sanastours_db;
USE sanastours_db;
SHOW databases;
SELECT database();

#Tour Package Table
CREATE TABLE TourPackage (
package_id VARCHAR(3),
package_name VARCHAR(25) NOT NULL,
description TEXT,
price DECIMAL(10,2) NOT NULL,
duration_days INTEGER NOT NULL,
PRIMARY KEY (package_id),
CONSTRAINT check_tour_package_price CHECK (price >= 0),
CONSTRAINT check_tour_package_duration CHECK (duration_days > 0)
);

#Destination Table 
CREATE TABLE Destination (
destination_id VARCHAR(5),
destination_name VARCHAR(20) NOT NULL,
description TEXT,
PRIMARY KEY (destination_id)
);

#PackageDestination Table
CREATE TABLE PackageDestination (
package_id VARCHAR(3) NOT NULL,
destination_id VARCHAR(5) NOT NULL,
day_order INTEGER,
PRIMARY KEY (package_id, destination_id),
CONSTRAINT fk1 FOREIGN KEY (package_id) REFERENCES TourPackage(package_id) ON DELETE CASCADE
ON UPDATE RESTRICT,
CONSTRAINT fk2 FOREIGN KEY (destination_id) REFERENCES Destination(destination_id) ON DELETE CASCADE
ON UPDATE RESTRICT,
CONSTRAINT check_package_destination_day_order CHECK (day_order > 0)
);

#Itinerary Table 
CREATE TABLE Itinerary (
itinerary_id INT AUTO_INCREMENT,
package_id VARCHAR(3) NOT NULL,
day_number INT NOT NULL,
title VARCHAR(100),
description TEXT,
PRIMARY KEY (itinerary_id),
CONSTRAINT fk_itinerary_package FOREIGN KEY (package_id) REFERENCES TourPackage(package_id)ON DELETE CASCADE
ON UPDATE RESTRICT,
CONSTRAINT check_itinerary_day CHECK (day_number > 0),
CONSTRAINT unique_package_day UNIQUE (package_id, day_number)
);

