

-- Restricciones de llave primaria, llave única y llaves foráneas
DROP TABLE IF EXISTS persons;
DROP TABLE IF EXISTS jobs;

-- Crear la tabla personas
CREATE TABLE persons (
    id UUID DEFAULT gen_random_uuid() NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    birthday DATE NOT NULL,
    created_at TIMESTAMP DEFAULT now() NOT NULL,
    updated_at TIMESTAMP,
    CONSTRAINT persons_id_pk PRIMARY KEY (id),
    CONSTRAINT persons_first_name_last_name_uk UNIQUE (first_name, last_name)
);

-- Insertar datos a la tabla personas
INSERT INTO persons
VALUES
(DEFAULT, 'Christofer', 'Castillo', now(), DEFAULT, NULL);

-- Viola restricción de UK
INSERT INTO persons
VALUES
(DEFAULT, 'Veronica', 'Sanchez', now(), DEFAULT, NULL);

-- Viola restricción de PK
INSERT INTO persons
VALUES
('141fb6c5-387e-43d1-a217-57b69ddfb6fe', 'Creative', 'Destiny', now(), DEFAULT, NULL);

-- Crear la tabla empleos
CREATE TABLE jobs (
    id UUID DEFAULT gen_random_uuid() NOT NULL,
    persons_id UUID NOT NULL,
    job_name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT now() NOT NULL,
    updated_at TIMESTAMP,
    CONSTRAINT jobs_id_pk PRIMARY KEY (id),
    CONSTRAINT jobs_persons_id_fk FOREIGN KEY (persons_id)
        REFERENCES persons (id)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
);

-- Inserta datos en los empleos
INSERT INTO jobs
VALUES (DEFAULT, '141fb6c5-387e-43d1-a217-57b69ddfb6fe', 'DEVELOPER', DEFAULT, DEFAULT);

INSERT INTO jobs
VALUES (DEFAULT, '141fb6c5-387e-43d1-a212-54b69ddfb6ab', 'DEVELOPER', DEFAULT, DEFAULT);

-- Intento de borrado de información de personas
DELETE FROM persons
WHERE id = '141fb6c5-387e-43d1-a217-57b69ddfb6fe';

DELETE FROM persons
WHERE id = 'd2554104-cbd3-4f33-a869-20afa7e9d8b7';
