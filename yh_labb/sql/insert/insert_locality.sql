SET
    search_path TO yrkesco_database;

INSERT INTO
    Locality (
        locality_id,
        city,
        street_adress,
        postcode)
VALUES
    (
        'STO',
        'Stockholm',
        'Drottninggatan 10',
        11160
    ),
    (
        'GÖT',
        'Göteborg',
        'Kungsgatan 20',
        41115
    );

SELECT
    *
FROM
    Locality;