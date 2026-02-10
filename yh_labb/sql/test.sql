
CREATE TABLE IF NOT EXISTS
    test_table (

        column_1 INTEGER,
        column_2 INTEGER,
        column_3 INTEGER
    );

INSERT INTO test_table (column_1, column_2, column_3)
VALUES (1, 2, 3);

CREATE TABLE IF NOT EXISTS
    testSchoolLocation(
        location_id VARCHAR(2) PRIMARY KEY,
        city VARCHAR(20),
        street_adress VARCHAR(50),
        postcode INTEGER
    );

CREATE TABLE IF NOT EXISTS
    test2SchoolLocation(
        location_id VARCHAR(2) PRIMARY KEY,
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
        occupation VARCHAR(20),
        email VARCHAR(50) UNIQUE,
        location_id VARCHAR(2),
        FOREIGN KEY (location_id) REFERENCES testSchoolLocation (location_id)
    );