SELECT 
    p.patient_name,
    t.treatment,
    m.medication
FROM Hospital.Patient p
LEFT JOIN Hospital.Patient_Treatment t ON t.patient_id = p.patient_id
LEFT JOIN Hospital.Patient_Medication m ON m.patient_id = p.patient_id
ORDER BY p.patient_name, t.treatment, m.medication;
