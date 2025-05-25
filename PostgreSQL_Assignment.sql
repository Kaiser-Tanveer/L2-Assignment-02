CREATE DATABASE conservation_db;

CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL
);

INSERT INTO
    rangers (name, region)
VALUES (
        'Alice Green',
        'Northern Hills'
    ),
    ('Bob White', 'River Delta'),
    (
        'Carol King',
        'Mountain Range'
    ),
    (
        'Meera Sharma',
        'Eastern Highlands'
    ),
    (
        'Ravi Kumar',
        'Northern Plains'
    );

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(50) NOT NULL
);

INSERT INTO
    species (
        common_name,
        scientific_name,
        discovery_date,
        conservation_status
    )
VALUES (
        'Snow Leopard',
        'Panthera uncia',
        '1775-01-01',
        'Endangered'
    ),
    (
        'Bengal Tiger',
        'Panthera tigris tigris',
        '1758-01-01',
        'Endangered'
    ),
    (
        'Red Panda',
        'Ailurus fulgens',
        '1825-01-01',
        'Vulnerable'
    ),
    (
        'Asiatic Elephant',
        'Elephas maximus indicus',
        '1758-01-01',
        'Endangered'
    ),
    (
        'Shadow Leopard',
        'Panthera obscura',
        '2001-01-01',
        'Critically Endangered'
    );

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT NOT NULL,
    species_id INT NOT NULL,
    sighting_time DATE NOT NULL,
    location VARCHAR(100) NOT NULL,
    notes TEXT,
    FOREIGN KEY (ranger_id) REFERENCES rangers (ranger_id),
    FOREIGN KEY (species_id) REFERENCES species (species_id)
);

INSERT INTO
    sightings (
        species_id,
        ranger_id,
        location,
        sighting_time,
        notes
    )
VALUES (
        1,
        1,
        'Peak Ridge',
        '2024-05-10 07:45:00',
        'Camera trap image captured'
    ),
    (
        2,
        2,
        'Bankwood Area',
        '2024-05-12 16:20:00',
        'Juvenile seen'
    ),
    (
        3,
        3,
        'Bamboo Grove East',
        '2024-05-15 09:10:00',
        'Feeding observed'
    ),
    (
        1,
        2,
        'Snowfall Pass',
        '2024-05-18 18:30:00',
        NULL
    ),
    (
        5,
        4,
        'Shadow Glen',
        '2024-05-20 05:15:00',
        'Unconfirmed shadowy figure seen'
    );

---------------------- Problem-01 --------------------------
INSERT INTO
    rangers (name, region)
VALUES ('Derek Fox', 'Costal Plains');

---------------------- Problem-02 --------------------------
SELECT COUNT(DISTINCT (species_id)) FROM species;

---------------------- Problem-03 --------------------------
SELECT * FROM sightings WHERE location ILIKE '%Pass%';

---------------------- Problem-04 --------------------------
SELECT name, COUNT(sighting_id)
FROM rangers
    JOIN sightings ON rangers.ranger_id = sightings.ranger_id
GROUP BY
    name
ORDER BY name;

---------------------- Problem-05 --------------------------
SELECT common_name
FROM species
    LEFT JOIN sightings ON species.species_id = sightings.species_id
WHERE
    sightings.species_id IS NULL;

---------------------- Problem-06 --------------------------
SELECT common_name, sighting_time, name
FROM
    sightings
    JOIN rangers ON sightings.ranger_id = rangers.ranger_id
    JOIN species ON sightings.species_id = species.species_id
ORDER BY sighting_time DESC
LIMIT 2;

---------------------- Problem-07 --------------------------
UPDATE species
SET
    conservation_status = 'Historic'
WHERE
    discovery_date < '1800-01-01';

---------------------- Problem-08 --------------------------
---------------------- Problem-09 --------------------------

SELECT * from sightings;