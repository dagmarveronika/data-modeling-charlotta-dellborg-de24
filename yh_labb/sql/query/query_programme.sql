SET
    search_path TO yrkesco_database;

--Get the name of the programme
SELECT
    programme_name
FROM
    Programme
WHERE
    programme_code = 'DE';

--Check which classes it has
SELECT
    class_id AS classes
FROM
    SchoolClass
WHERE
    programme_code = 'DE';

--Check which courses it has
SELECT
    course_name AS courses
FROM
    Course
WHERE
    course_code IN (
        SELECT
            course_code
        FROM
            ProgrammeCourse
        WHERE
            programme_code = 'DE'
    );