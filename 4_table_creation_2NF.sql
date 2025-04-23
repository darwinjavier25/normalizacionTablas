-- Como no hay aun relacion entre pacientes y doctores creamos una tabla intermedia
CREATE TABLE Hospital.Patient_Doctor (
    patient_id INT,
    doctor_id INT,
    PRIMARY KEY (patient_id, doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Hospital.Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Hospital.Doctor(doctor_id)
);