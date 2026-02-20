SET
    search_path TO yrkesco_database;

CREATE FUNCTION check_class_availability() RETURNS TRIGGER AS $$
    BEGIN
        IF (SchoolClass.student_count >= SchoolClass.student_capacity WHERE SchoolClass.class_id = NEW.class_id)
            RAISE EXCEPTION 'Class % is at full capacity, new student cannot be added', NEW.class_id;
        END IF;
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_student_count
    BEFORE UPDATE OF class_id ON Student
    FOR EACH ROW
    WHEN (OLD.class_id IS DISTINCT FROM NEW.class_id)
    EXECUTE FUNCTION check_class_availability();
    