SET search_path TO yrkesco_database;

INSERT INTO
    PermanentEmployee(
        personal_identity_number,
        staff_id,
        phone_number,
        adress,
        monthly_salary
        )
VALUES
    (
        197905223113,
        'ToHo',
        '0701112233',
        'Genvägen 5',
        45000
    ),
    (
        198811058942,
        'KrHå',
        '0704445566',
        'Karlavägen 12',
        45000
    );

SELECT
    *
FROM
    PermanentEmployee;