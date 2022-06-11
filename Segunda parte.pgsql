
-- PARTE 2 - DML

-- Insertar datos

-- 1. Insert into tabla (campo1, ..., campoN) VALUES (valor1, ..., valorN);
INSERT INTO persons (id, first_name, last_name, birthday, available)
VALUES (gen_random_uuid(), 'Christofer', 'Castillo', '1993-10-17', true);

INSERT INTO persons (first_name, birthday, last_name,  available, id)
VALUES ('Destiny', '2021-12-06', 'Creative', true, gen_random_uuid());

-- 2. Insert into tabla VALUES (valor1, valor2, ..., valorN);
INSERT INTO persons
VALUES (gen_random_uuid(), 'Veronica', 'Sanchez', '2010-03-20', false);

-- 3. Insert into tabla VALUES (default, valorN, valorM, ..., valorZ);
INSERT INTO persons
VALUES (DEFAULT, 'Veronica', DEFAULT, DEFAULT, true);

-- 3.1 Valores por defecto
CREATE TABLE students (
    id UUID DEFAULT gen_random_uuid(),
    first_name VARCHAR(50),
    is_active BOOL DEFAULT true,
    created_at TIMESTAMP DEFAULT now()
);

INSERT INTO students
VALUES (DEFAULT, 'Tesla', DEFAULT, DEFAULT);

INSERT INTO students ( first_name )
VALUES ( 'Mia' );

-- 4. Insert into tabla VALUES (valorA1, ..., valorAn), (valorB1, ..., valorBN);
INSERT INTO students
VALUES  (DEFAULT, 'Audi', DEFAULT, DEFAULT), 
        (DEFAULT, 'Ducati', DEFAULT, DEFAULT),
        (DEFAULT, 'Hyundai', DEFAULT, DEFAULT);

INSERT INTO students ( first_name, created_at)
VALUES
( 'Toyota', '1982-02-12' ),
( 'Nissan', '1991-11-07' );

-- 4.1 Creamos una tabla con el tipo de dato de la tabla students
CREATE TABLE tmp_students (
    f_name VARCHAR(50),
    active BOOL DEFAULT true
);

-- 4.2 Insertamos datos a la tabla creada
INSERT INTO tmp_students
VALUES 
('Primer', DEFAULT),
('Segundo', false),
('Tercero', DEFAULT),
('Cuarto', DEFAULT);

-- 5. Insert into tabla SELECT your-query;
INSERT INTO students (first_name, is_active)
SELECT f_name, active
FROM tmp_students;

-- 6. Datos nulos
INSERT INTO students VALUES (NULL, NULL, NULL, NULL);

DROP TABLE students;

CREATE TABLE students (
    id UUID DEFAULT gen_random_uuid() NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    is_active BOOL NOT NULL,
    created_at TIMESTAMP DEFAULT now() NOT NULL,
    updated_at TIMESTAMP
);

INSERT INTO students
VALUES 
(DEFAULT, 'Christofer', TRUE, DEFAULT, DEFAULT);

-- No es posible, porque viola las restricciones de nulo
INSERT INTO students VALUES (NULL, NULL, NULL, NULL);
