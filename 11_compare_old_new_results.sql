-- Para 1NF
-- Tabla anterior
SELECT patient_name, treatments
FROM Hospital.Medical_Records_Not_Normalized
ORDER BY patient_name;


-- Tablas normalizadas
SELECT p.patient_name, t.treatment
FROM Hospital.Patient p
JOIN Hospital.Patient_Treatment t ON p.patient_id = t.patient_id
ORDER BY p.patient_name, t.treatment;


-- Para 2NF
-- Tabla anterior
SELECT DISTINCT patient_name, doctor_name
FROM Hospital.Medical_Records_Not_Normalized;


-- Tablas normalizadas
SELECT p.patient_name, d.doctor_name
FROM Hospital.Patient_Doctor pd
JOIN Hospital.Patient p ON p.patient_id = pd.patient_id
JOIN Hospital.Doctor d ON d.doctor_id = pd.doctor_id;

-- Para 3NF y BCNF
-- Antes:
SELECT room_number, room_type FROM Hospital.Medical_Records_Not_Normalized;

-- Ahora:
SELECT * FROM Hospital.Room;

-- Aquí haces un CROSS JOIN visual para mostrar lo que hubiera pasado si no hubieras separado tratamientos y medicamentos
-- Consulta en la tabla anterior
SELECT patient_name, treatments, medications
FROM Hospital.Medical_Records_Not_Normalized
ORDER BY patient_name;


-- Consulta en las nuevas tablas
SELECT 
    p.patient_name, 
    t.treatment, 
    m.medication
FROM Hospital.Patient p
JOIN Hospital.Patient_Treatment t ON p.patient_id = t.patient_id
JOIN Hospital.Patient_Medication m ON p.patient_id = m.patient_id
ORDER BY p.patient_name, t.treatment, m.medication;




