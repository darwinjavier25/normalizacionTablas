-- Relacion Doctor -> paciente
select * from Hospital.Patient_Doctor;

-- No hay perdida de información
SELECT 
    p.patient_name,
    d.doctor_name,
    ds.specialty,
    t.treatment,
    m.medication,
    a.admission_date,
    r.room_number,
    r.room_type
FROM Hospital.Patient p
LEFT JOIN Hospital.Patient_Doctor pd ON pd.patient_id = p.patient_id
LEFT JOIN Hospital.Doctor d ON d.doctor_id = pd.doctor_id
LEFT JOIN Hospital.Doctor_Specialty ds ON ds.doctor_id = d.doctor_id
LEFT JOIN Hospital.Patient_Treatment t ON t.patient_id = p.patient_id
LEFT JOIN Hospital.Patient_Medication m ON m.patient_id = p.patient_id
LEFT JOIN Hospital.Patient_Admission a ON a.patient_id = p.patient_id
LEFT JOIN Hospital.Room r ON r.room_number = a.room_number
ORDER BY p.patient_name, a.admission_date;
