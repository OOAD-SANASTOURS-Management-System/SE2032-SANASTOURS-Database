CREATE DATABASE sanastours_db;
USE sanastours_db;
SHOW databases;
SELECT database();

CREATE TABLE TourPackage (
package_Id VARCHAR(3),
package_name VARCHAR(25),
description TEXT,
price DECIMAL(10,2),
duration_days INTEGER,
PRIMARY KEY (package_Id)
);

CREATE TABLE Destination (
destination_Id VARCHAR(5),
destination_name VARCHAR(20),
description TEXT,
PRIMARY KEY (destination_Id)
);


CREATE TABLE PackageDestination (
package_Id VARCHAR(3) NOT NULL,
destination_Id VARCHAR(5) NOT NULL,
day_oder DATE ,
CONSTRAINT fk1 FOREIGN KEY (package_Id) REFERENCES TourPackage(package_Id) ON DELETE CASCADE ON UPDATE RESTRICT,
CONSTRAINT fk2 FOREIGN KEY (destination_Id) REFERENCES Destination(destination_Id) ON DELETE CASCADE ON UPDATE RESTRICT
);


SELECT * FROM TourPackage;
SELECT * FROM Destination;
SELECT * FROM PackageDestination;