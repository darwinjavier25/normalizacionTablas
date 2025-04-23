-- Antes de la solucion 1NF
select doctor_specialties, treatments, medications, admission_dates
from hospital.Medical_Records_Not_Normalized;

-- Despues de la solución 1NF
SELECT 
    p.patient_name,
    p.patient_dob,
    p.patient_address,
    d.doctor_name,
    ds.specialty,
    t.treatment,
    m.medication,
    a.admission_date,
    r.room_number,
    r.room_type
FROM Hospital.Patient p
-- Relaciones directas
LEFT JOIN Hospital.Patient_Treatment t ON t.patient_id = p.patient_id
LEFT JOIN Hospital.Patient_Medication m ON m.patient_id = p.patient_id
LEFT JOIN Hospital.Patient_Admission a ON a.patient_id = p.patient_id
LEFT JOIN Hospital.Room r ON r.room_number = a.room_number
-- Obtener doctor usando subquery por paciente
LEFT JOIN (
    SELECT DISTINCT mn.patient_name, d.doctor_id, d.doctor_name
    FROM Hospital.Medical_Records_Not_Normalized mn
    JOIN Hospital.Doctor d ON d.doctor_name = mn.doctor_name
) AS d ON d.patient_name = p.patient_name
LEFT JOIN Hospital.Doctor_Specialty ds ON ds.doctor_id = d.doctor_id
ORDER BY p.patient_name, a.admission_date, t.treatment, m.medication;
