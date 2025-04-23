-- Insertar datos en tabla inicial
INSERT INTO Hospital.Medical_Records_Not_Normalized
VALUES
('John Smith', '1980-05-15', '123 Main St, Boston, MA', 'Dr. Jane Wilson', 'Cardiology, Internal
Medicine',
'EKG, Blood Test, CT Scan', 'Lisinopril, Aspirin, Atorvastatin',
301, 'Semi-Private', '2023-01-05, 2023-03-10, 2023-06-22'),
('Maria Garcia', '1975-11-30', '456 Oak Ave, Boston, MA', 'Dr. Jane Wilson', 'Cardiology,
Internal Medicine',
'Blood Test, Stress Test', 'Metformin, Lisinopril',
302, 'Private', '2023-02-15, 2023-07-08'),
('Robert Johnson', '1990-08-22', '789 Pine Rd, Cambridge, MA', 'Dr. Michael Brown',
'Neurology, Sleep Medicine',
'MRI, EEG, Blood Test', 'Gabapentin, Melatonin',
301, 'Semi-Private', '2023-04-03, 2023-05-18');

-- Doctores
INSERT INTO Hospital.Doctor (doctor_name) VALUES ('Dr. Jane Wilson');
INSERT INTO Hospital.Doctor (doctor_name) VALUES ('Dr. Michael Brown');

-- Asumimos doctor_id = 1 para Jane, 2 para Michael

-- Especialidades
INSERT INTO Hospital.Doctor_Specialty (doctor_id, specialty) VALUES (1, 'Cardiology');
INSERT INTO Hospital.Doctor_Specialty (doctor_id, specialty) VALUES (1, 'Internal Medicine');
INSERT INTO Hospital.Doctor_Specialty (doctor_id, specialty) VALUES (2, 'Neurology');
INSERT INTO Hospital.Doctor_Specialty (doctor_id, specialty) VALUES (2, 'Sleep Medicine');

-- Insertamos pacientes
INSERT INTO Hospital.Patient (patient_name, patient_dob, patient_address)
VALUES ('John Smith', '1980-05-15', '123 Main St, Boston, MA');

INSERT INTO Hospital.Patient (patient_name, patient_dob, patient_address)
VALUES ('Maria Garcia', '1975-11-30', '456 Oak Ave, Boston, MA');

INSERT INTO Hospital.Patient (patient_name, patient_dob, patient_address)
VALUES ('Robert Johnson', '1990-08-22', '789 Pine Rd, Cambridge, MA');


-- Insertamos Tratamientos y Medicamentos
-- Asumimos: John Smith = 1, Maria Garcia = 2, Robert Johnson = 3

-- Tratamientos
INSERT INTO Hospital.Patient_Treatment VALUES (1, 'EKG');
INSERT INTO Hospital.Patient_Treatment VALUES (1, 'Blood Test');
INSERT INTO Hospital.Patient_Treatment VALUES (1, 'CT Scan');
INSERT INTO Hospital.Patient_Treatment VALUES (2, 'Blood Test');
INSERT INTO Hospital.Patient_Treatment VALUES (2, 'Stress Test');
INSERT INTO Hospital.Patient_Treatment VALUES (3, 'MRI');
INSERT INTO Hospital.Patient_Treatment VALUES (3, 'EEG');
INSERT INTO Hospital.Patient_Treatment VALUES (3, 'Blood Test');

-- Medicamentos
INSERT INTO Hospital.Patient_Medication VALUES (1, 'Lisinopril');
INSERT INTO Hospital.Patient_Medication VALUES (1, 'Aspirin');
INSERT INTO Hospital.Patient_Medication VALUES (1, 'Atorvastatin');
INSERT INTO Hospital.Patient_Medication VALUES (2, 'Metformin');
INSERT INTO Hospital.Patient_Medication VALUES (2, 'Lisinopril');
INSERT INTO Hospital.Patient_Medication VALUES (3, 'Gabapentin');
INSERT INTO Hospital.Patient_Medication VALUES (3, 'Melatonin');

-- Insertamos room

-- Habitaciones
INSERT INTO Hospital.Room VALUES (301, 'Semi-Private');
INSERT INTO Hospital.Room VALUES (302, 'Private');

-- Fechas de admisión
-- John Smith
INSERT INTO Hospital.Patient_Admission VALUES (1, '2023-01-05', 301);
INSERT INTO Hospital.Patient_Admission VALUES (1, '2023-03-10', 301);
INSERT INTO Hospital.Patient_Admission VALUES (1, '2023-06-22', 301);

-- Maria Garcia
INSERT INTO Hospital.Patient_Admission VALUES (2, '2023-02-15', 302);
INSERT INTO Hospital.Patient_Admission VALUES (2, '2023-07-08', 302);

-- Robert Johnson
INSERT INTO Hospital.Patient_Admission VALUES (3, '2023-04-03', 301);
INSERT INTO Hospital.Patient_Admission VALUES (3, '2023-05-18', 301);




