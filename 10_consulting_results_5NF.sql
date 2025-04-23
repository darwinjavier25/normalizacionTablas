SELECT 
    p.patient_name,
    d.doctor_name,
    t.treatment
FROM Hospital.Patient p
JOIN Hospital.Patient_Treatment t ON p.patient_id = t.patient_id
JOIN Hospital.Patient_Doctor pd ON pd.patient_id = p.patient_id
JOIN Hospital.Doctor d ON pd.doctor_id = d.doctor_id
ORDER BY p.patient_name, d.doctor_name, t.treatment;
