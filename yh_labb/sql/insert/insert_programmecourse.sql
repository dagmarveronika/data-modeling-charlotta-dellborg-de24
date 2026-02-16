SET
    search_path TO yrkesco_database;

INSERT INTO
    ProgrammeCourse (
        programme_code,
        course_code,
        educator,
        start_date,
        end_date
    )
VALUES
    (
        'DE',
        'PROPYT1',
        'EvSa',
        '2025-09-15',
        '2025-11-07'
    ),
    (
        'DE',
        'PROPYT2',
        'EvSa',
        '2025-11-10',
        '2025-12-19'
    ),
    (
        'JAVA',
        'PROJAV1',
        'AnSj',
        '2025-09-15',
        '2025-11-07'
    ),
    (
        'JAVA',
        'PROJAV2',
        'AnSj',
        '2025-11-10',
        '2026-01-16'
    );

SELECT
    *
FROM
    ProgrammeCourse;