USE sanastours_db;

INSERT INTO Payment (payment_id, booking_id, payment_date, amount, payment_status, reference_number) VALUES
(201, 101, '2026-09-01', 45000.00, 'Completed', 'REF-2026-001'),
(202, 102, '2026-09-03', 85000.00, 'Completed', 'REF-2026-002'),
(203, 103, '2026-09-05', 15000.00, 'Pending',   'REF-2026-003'),
(204, 104, '2026-09-08', 120000.00, 'Completed', 'REF-2026-004'),
(205, 105, '2026-09-10', 0.00,      'Refunded',  'REF-2026-005'),
(206, 106, '2026-09-12', 65000.00, 'Completed', 'REF-2026-006'),
(207, 107, '2026-09-15', 30000.00, 'Partial',   'REF-2026-007'),
(208, 108, '2026-09-18', 95000.00, 'Completed', 'REF-2026-008'),
(209, 109, '2026-09-20', 45000.00, 'Completed', 'REF-2026-009'),
(210, 110, '2026-09-22', 20000.00, 'Pending',   'REF-2026-010');

INSERT INTO Booking (booking_id, customer_id, package_id, booking_date, no_of_people, booking_status) VALUES
(101, 1, 1, '2026-09-01', 2, 'Confirmed'),
(102, 2, 2, '2026-09-03', 4, 'Confirmed'),
(103, 3, 1, '2026-09-05', 1, 'Pending'),
(104, 4, 3, '2026-09-08', 5, 'Confirmed'),
(105, 5, 2, '2026-09-10', 3, 'Cancelled'),
(106, 6, 4, '2026-09-12', 10, 'Confirmed'),
(107, 7, 3, '2026-09-15', 6, 'Pending'),
(108, 8, 5, '2026-09-18', 2, 'Confirmed'),
(109, 9, 1, '2026-09-20', 20, 'Confirmed'),
(110, 10, 2, '2026-09-22', 2, 'Pending');