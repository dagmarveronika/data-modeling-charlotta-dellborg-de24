SET
    search_path TO yrkesco_database;

SELECT
    SchoolClass.class_id,
    Programme.programme_name,
    SchoolLocation.city,
    Staff.first_name || ' ' || Staff.last_name AS director
FROM
    SchoolClass
    INNER JOIN Programme USING (programme_code)
    INNER JOIN SchoolLocation USING (locality_id)
    INNER JOIN Staff ON (Programme.director=Staff.staff_id)
WHERE
    class_id = 'DE25A';