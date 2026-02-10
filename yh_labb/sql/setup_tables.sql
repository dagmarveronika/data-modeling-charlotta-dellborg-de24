CREATE SCHEMA IF NOT EXISTS yrkesco_database;

SET search_path TO yrkesco_database;

CREATE TABLE IF NOT EXISTS
    SchoolLocation(
        location_id VARCHAR(3) PRIMARY KEY,
        city VARCHAR(20),
        street_adress VARCHAR(50),
        postcode INTEGER
    );

CREATE TABLE IF NOT EXISTS
    Staff (
        staff_id VARCHAR(4) PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        employment_type VARCHAR(20),
        occupation VARCHAR(50),
        email VARCHAR(50) UNIQUE,
        location_id VARCHAR(3),
        FOREIGN KEY (location_id) REFERENCES SchoolLocation (location_id)
    );

CREATE TABLE IF NOT EXISTS
    PermanentEmployee(
        personal_identity_number BIGINT PRIMARY KEY,
        staff_id VARCHAR(4),
        FOREIGN KEY (staff_id) REFERENCES Staff (staff_id),
        phone_number VARCHAR(10) UNIQUE,
        adress VARCHAR(100),
        monthly_salary INTEGER
    );

CREATE TABLE IF NOT EXISTS
    Consultant(
        personal_identity_number BIGINT PRIMARY KEY,
        staff_id VARCHAR(4),
        FOREIGN KEY (staff_id) REFERENCES Staff (staff_id),
        company_name VARCHAR(50),
        organization_number VARCHAR(30),
        company_adress VARCHAR(100),
        hourly_fee INTEGER,
        has_ftax BOOLEAN
    );

CREATE TABLE IF NOT EXISTS
    Programme (
        programme_code VARCHAR(5) PRIMARY KEY,
        programme_name VARCHAR(50),
        director VARCHAR(4),
        FOREIGN KEY (director) REFERENCES Staff (staff_id),
        hve_credits INTEGER,
        length_in_years INTEGER
    );

CREATE TABLE IF NOT EXISTS
    Course (
        course_code VARCHAR(10) PRIMARY KEY,
        course_name VARCHAR(50) UNIQUE,
        description VARCHAR(300),
        hve_credits INTEGER,
        length_in_weeks INTEGER,
        available_as_freestanding BOOLEAN
    );

CREATE TABLE IF NOT EXISTS
    ProgrammeCourse (
        programme_code VARCHAR(5),
        course_code VARCHAR(10),
        PRIMARY KEY (programme_code, course_code),
        FOREIGN KEY (programme_code) REFERENCES Programme (programme_code),
        FOREIGN KEY (course_code) REFERENCES Course (course_code),
        educator VARCHAR(4),
        FOREIGN KEY (educator) REFERENCES Staff (staff_id),
        start_date DATE,
        end_date DATE
    );

CREATE TABLE IF NOT EXISTS
    FreestandingCourse (
        course_id SERIAL PRIMARY KEY,
        course_code VARCHAR(10),
        FOREIGN KEY (course_code) REFERENCES Course (course_code),
        educator VARCHAR(4),
        FOREIGN KEY (educator) REFERENCES Staff (staff_id),
        start_date DATE,
        end_date DATE
    );

CREATE TABLE IF NOT EXISTS
    SchoolClass (
        class_id VARCHAR(8) PRIMARY KEY,
        programme_code VARCHAR(5),
        FOREIGN KEY (programme_code) REFERENCES Programme (programme_code),
        start_date DATE,
        end_date DATE,
        location_id VARCHAR(3),
        FOREIGN KEY (location_id) REFERENCES SchoolLocation (location_id),
        student_count INTEGER,
        student_capacity INTEGER
    );

CREATE TABLE IF NOT EXISTS 
    Student (
        personal_identity_number BIGINT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        class_id VARCHAR(4),
        FOREIGN KEY (class_id) REFERENCES SchoolClass (class_id),
        email VARCHAR(50) UNIQUE,
        phone_number VARCHAR(10) UNIQUE
    );

