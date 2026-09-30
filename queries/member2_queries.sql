USE sanastours_db;

-- QUERY 1
-- Display all tour packages ordered by price
-- ============================================================

SELECT
    package_id,
    package_name,
    price,
    duration_days
FROM TourPackage
ORDER BY price ASC;

-- QUERY 2
-- Display tour packages within a selected price range
-- Example range: USD. 200 - USD. 6000

SELECT
    package_id,
    package_name,
    price,
    duration_days
FROM TourPackage
WHERE price BETWEEN 200.00 AND 6000.00
ORDER BY price ASC;

-- QUERY 3
-- Display destinations included in each tour package
-- according to visiting order


SELECT
    tp.package_id,
    tp.package_name,
    d.destination_id,
    d.destination_name,
    pd.day_order
FROM TourPackage tp
JOIN PackageDestination pd
    ON tp.package_id = pd.package_id
JOIN Destination d
    ON pd.destination_id = d.destination_id
ORDER BY tp.package_id, pd.day_order;

-- QUERY 4
-- Find all tour packages containing a specific destination
-- Example destination: Kandy

SELECT
    tp.package_id,
    tp.package_name,
    d.destination_name,
    pd.day_order
FROM TourPackage tp
JOIN PackageDestination pd
    ON tp.package_id = pd.package_id
JOIN Destination d
    ON pd.destination_id = d.destination_id
WHERE d.destination_name = 'Kandy'
ORDER BY tp.package_name;

-- QUERY 5
-- Count the number of destinations in each tour package

SELECT
    tp.package_id,
    tp.package_name,
    COUNT(pd.destination_id) AS number_of_destinations
FROM TourPackage tp
LEFT JOIN PackageDestination pd
    ON tp.package_id = pd.package_id
GROUP BY
    tp.package_id,
    tp.package_name
ORDER BY number_of_destinations DESC;

-- Display the complete itinerary of a selected tour package
-- Example package: P01

SELECT
    tp.package_id,
    tp.package_name,
    i.day_number,
    i.title,
    i.description
FROM TourPackage tp
JOIN Itinerary i
    ON tp.package_id = i.package_id
WHERE tp.package_id = 'P01'
ORDER BY i.day_number;

-- QUERY 7
-- Display tour packages that have more than one destination

SELECT
    tp.package_id,
    tp.package_name,
    COUNT(pd.destination_id) AS number_of_destinations
FROM TourPackage tp
JOIN PackageDestination pd
    ON tp.package_id = pd.package_id
GROUP BY
    tp.package_id,
    tp.package_name
HAVING COUNT(pd.destination_id) > 1
ORDER BY number_of_destinations DESC;

-- QUERY 8
-- Display tour packages that cost more than the
-- average price of all tour packages

SELECT
    package_id,
    package_name,
    price,
    duration_days
FROM TourPackage
WHERE price > (
    SELECT AVG(price)
    FROM TourPackage
)
ORDER BY price DESC;

DROP TABLE IF EXISTS Itinerary;
DROP TABLE IF EXISTS PackageDestination;
DROP TABLE IF EXISTS Destination;
DROP TABLE IF EXISTS TourPackage;