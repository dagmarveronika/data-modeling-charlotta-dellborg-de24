SET search_path TO yrkesco_database;

TRUNCATE TABLE FreestandingCourse RESTART IDENTITY CASCADE;

INSERT INTO
    FreestandingCourse(course_code, educator, start_date, end_date, locality)
VALUES
    (
        'CYB',
        'KaGu',
        '2025-09-15',
        '2025-11-21',
        'STO'
    ),
    (
        'CYB',
        'SiKo',
        '2025-09-15',
        '2025-11-21',
        'GÖT'
    );

SELECT
    *
FROM
    FreestandingCourse;