INSERT INTO Driver
(driver_id, user_id, driver_name, nic, phone, license_number, license_expiry_date, driver_status)
VALUES
(1, 1, 'Kasun Perera', '901234567V', '0771234567', 'B1234567', '2028-05-15', 'Active'),
(2, 2, 'Nimal Silva', '921456789V', '0712345678', 'B2345678', '2027-11-20', 'Active'),
(3, 3, 'Saman Fernando', '881234567V', '0763456789', 'B3456789', '2029-03-10', 'Active'),
(4, 4, 'Dinesh Jayasinghe', '951234567V', '0754567890', 'B4567890', '2028-08-25', 'Active'),
(5, 5, 'Ruwan Bandara', '891234567V', '0725678901', 'B5678901', '2027-06-30', 'Inactive'),
(6, 6, 'Chaminda Kumara', '931234567V', '0776789012', 'B6789012', '2030-01-12', 'Active'),
(7, 7, 'Tharindu Gunasekara', '961234567V', '0717890123', 'B7890123', '2029-09-18', 'Active'),
(8, 8, 'Pradeep Wijesinghe', '871234567V', '0768901234', 'B8901234', '2028-12-05', 'Active'),
(9, 9, 'Lahiru Madushan', '941234567V', '0759012345', 'B9012345', '2027-04-22', 'Inactive'),
(10, 10, 'Asanka Rathnayake', '911234567V', '0720123456', 'B0123456', '2029-07-14', 'Active');

INSERT INTO Vehicle
(vehicle_id, registration_no, brand, model, vehicle_type, capacity, vehicle_status)
VALUES
-- Cars
(1, 'CAB-1234', 'Toyota', 'Prius', 'Car', 4, 'Available'),
(2, 'CAR-5678', 'Toyota', 'Axio', 'Car', 4, 'Available'),
(3, 'CBF-2345', 'Honda', 'Vezel', 'Car', 4, 'Unavailable'),
(4, 'CAG-7890', 'Suzuki', 'Wagon R', 'Car', 4, 'Available'),

-- Vans
(5, 'PA-4567', 'Toyota', 'KDH', 'Van', 12, 'Available'),
(6, 'PB-6789', 'Nissan', 'Caravan', 'Van', 12, 'Available'),
(7, 'PC-3456', 'Toyota', 'HiAce', 'Van', 15, 'Unavailable'),

-- Buses
(8, 'ND-1234', 'Toyota', 'Coaster', 'Bus', 29, 'Available'),
(9, 'NC-5678', 'Mitsubishi', 'Rosa', 'Bus', 33, 'Available'),
(10, 'NB-9012', 'Mitsubishi', 'Rosa', 'Bus', 29, 'Unavailable');

