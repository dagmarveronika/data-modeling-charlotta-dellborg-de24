SET
    search_path TO yrkesco_database;

INSERT INTO
    Staff (
        staff_id,
        first_name,
        last_name,
        employment_type,
        occupation,
        email,
        locality_id
    )
VALUES
    (
        'EvSa',
        'Eva',
        'Sandberg',
        'consultant',
        'teacher',
        'evsa@yrkesco.se',
        'STO'
    ),
    (
        'AnSj',
        'Anders',
        'Sjöström',
        'consultant',
        'teacher',
        'ansj@yrkesco.se',
        'GÖT'
    ),
    (
        'ToHo',
        'Torsten',
        'Holmgren',
        'permanent employee',
        'faculty programme director',
        'toho@yrkesco.se',
        'GÖT'
    ),
    (
        'KrHå',
        'Kristina',
        'Håkansson',
        'permanent employee',
        'faculty programme director',
        'krhå@yrkesco.se',
        'STO'
    ),
    (
        'KaGu',
        'Karl',
        'Gustavsson',
        'consultant',
        'teacher',
        'kagu@yrkesco.se',
        'STO'
    ),
    (
        'SiKo',
        'Silvia',
        'Kronstedt',
        'consultant',
        'teacher',
        'siko@yrkesco.se',
        'GÖT'
    );

SELECT
    *
FROM
    Staff;