CREATE TABLE PERSON (person_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(15),
    driver_id VARCHAR(20) UNIQUE
);

CREATE TABLE CAR (
    car_id INT PRIMARY KEY AUTO_INCREMENT,
    license_plate VARCHAR(20) UNIQUE,
    model VARCHAR(50),
    brand VARCHAR(50),
    year INT,
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES PERSON(person_id)
);

CREATE TABLE EMPLOYEE (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE INSURANCE (
    insurance_id INT PRIMARY KEY AUTO_INCREMENT,
    ins_type VARCHAR(50),
    ins_date DATE,
    car_id INT,
    emp_id INT,
    FOREIGN KEY (car_id) REFERENCES CAR(car_id),
    FOREIGN KEY (emp_id) REFERENCES EMPLOYEE(emp_id)
);

CREATE TABLE PAYMENT (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_type VARCHAR(50),
    payment_date DATE,
    insurance_id INT,
    person_id INT,
    FOREIGN KEY (insurance_id) REFERENCES INSURANCE(insurance_id),
    FOREIGN KEY (person_id) REFERENCES PERSON(person_id)
);
