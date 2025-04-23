-- Crear schema para trabajar en el
CREATE SCHEMA Hospital;

-- Crear tabla inicial
CREATE TABLE Hospital.Medical_Records_Not_Normalized (
patient_name NVARCHAR(255), -- Nombre completo del paciente
patient_dob DATE, -- Fecha de nacimiento del paciente
patient_address NVARCHAR(MAX), -- Dirección completa del paciente
doctor_name NVARCHAR(255), -- Nombre del médico tratante
doctor_specialties NVARCHAR(255), -- Especialidades del médico (separadas por comas)
treatments NVARCHAR(MAX), -- Tratamientos recibidos (separados por comas)
medications NVARCHAR(MAX), -- Medicamentos recetados (separados por comas)
room_number INT, -- Número de habitación asignada
room_type NVARCHAR(100), -- Tipo de habitación (Privada, Semi-Privada, etc.)
admission_dates NVARCHAR(255)); -- Fechas de admisión del paciente (separadas por comas));

-- Paciente
CREATE TABLE Hospital.Patient (
    patient_id INT IDENTITY PRIMARY KEY,
    patient_name NVARCHAR(255),
    patient_dob DATE,
    patient_address NVARCHAR(MAX)
);

-- Doctor
CREATE TABLE Hospital.Doctor (
    doctor_id INT IDENTITY PRIMARY KEY,
    doctor_name NVARCHAR(255)
);

-- Especialidades del doctor
CREATE TABLE Hospital.Doctor_Specialty (
    doctor_id INT,
    specialty NVARCHAR(255),
    FOREIGN KEY (doctor_id) REFERENCES Hospital.Doctor(doctor_id)
);

-- Tratamientos del paciente
CREATE TABLE Hospital.Patient_Treatment (
    patient_id INT,
    treatment NVARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES Hospital.Patient(patient_id)
);

-- Medicamentos del paciente
CREATE TABLE Hospital.Patient_Medication (
    patient_id INT,
    medication NVARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES Hospital.Patient(patient_id)
);

-- Habitación
CREATE TABLE Hospital.Room (
    room_number INT PRIMARY KEY,
    room_type NVARCHAR(100)
);

-- Fechas de admisión
CREATE TABLE Hospital.Patient_Admission (
    patient_id INT,
    admission_date DATE,
    room_number INT,
    FOREIGN KEY (patient_id) REFERENCES Hospital.Patient(patient_id),
    FOREIGN KEY (room_number) REFERENCES Hospital.Room(room_number)
);
