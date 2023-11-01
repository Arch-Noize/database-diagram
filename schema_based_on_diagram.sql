CREATE TABLE patients (
    id int PRIMARY KEY,
    name TEXT NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE invoices (
    id int PRIMARY KEY,
    total_amount DECIMAL(5, 2) NOT NULL,
    generated_at timestamp,
    payed_at timestamp,
    medical_history_id int
);

CREATE TABLE medical_histories (
    id int PRIMARY KEY,
    admitted_at timestamp,
    patient_id int,
    status VARCHAR(100)
);

CREATE TABLE invoice_items (
    id int PRIMARY KEY,
    unit_price DECIMAL(5,2) NOT NULL,
    quantity int,
    total_price DECIMAL(5,2) NOT NULL,
    invoice_id int,
    treatment_id int
);

CREATE TABLE treatments (
    id int PRIMARY KEY,
    type VARCHAR(100),
    name VARCHAR(100)
);