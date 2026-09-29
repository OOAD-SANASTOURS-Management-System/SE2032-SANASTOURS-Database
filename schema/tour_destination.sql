CREATE DATABASE sanastours_db;
USE sanastours_db;
SHOW databases;
SELECT database();

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

CREATE TABLE Destination (
destination_id VARCHAR(5),
destination_name VARCHAR(20) NOT NULL,
description TEXT,
PRIMARY KEY (destination_id)
);


CREATE TABLE PackageDestination (
package_id VARCHAR(3) NOT NULL,
destination_id VARCHAR(5) NOT NULL,
day_oder DATE ,
CONSTRAINT fk1 FOREIGN KEY (package_id) REFERENCES TourPackage(package_id) ON DELETE CASCADE ON UPDATE RESTRICT,
CONSTRAINT fk2 FOREIGN KEY (destination_id) REFERENCES Destination(destination_id) ON DELETE CASCADE ON UPDATE RESTRICT,
CONSTRAINT check_package_destination_day_order CHECK (day_order > 0)
);


