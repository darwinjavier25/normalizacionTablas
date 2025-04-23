-- Asumiendo:
-- John Smith = 1 → Dr. Jane Wilson = 1
-- Maria Garcia = 2 → Dr. Jane Wilson = 1
-- Robert Johnson = 3 → Dr. Michael Brown = 2

INSERT INTO Hospital.Patient_Doctor VALUES (1, 1);
INSERT INTO Hospital.Patient_Doctor VALUES (2, 1);
INSERT INTO Hospital.Patient_Doctor VALUES (3, 2);
