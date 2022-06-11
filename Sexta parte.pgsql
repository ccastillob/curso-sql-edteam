

-- FILTROS
-- WHERE campo operador valor, ejemplo: WHERE first_name = 'Christofer'
SELECT * FROM persons WHERE first_name = 'Christofer';

-- Funciones
SELECT * FROM persons WHERE first_name = 'CHRISTOFER';
SELECT * FROM persons WHERE upper(first_name) = 'CHRISTOFER';


-- Operadores de comparación
-- =
-- >
-- <
-- >=
-- <=
-- <>

SELECT * FROM persons WHERE upper(first_name) > 'CHRISTOFER';
SELECT * FROM persons WHERE upper(first_name) < 'CHRISTOFER';
SELECT * FROM persons WHERE upper(first_name) >= 'CHRISTOFER';
SELECT * FROM persons WHERE upper(first_name) <= 'CHRISTOFER';
SELECT * FROM persons WHERE upper(first_name) <> 'CHRISTOFER';


-- ADD & OR

SELECT * FROM persons WHERE upper(first_name) = 'CHRISTOFER' AND last_name <> '';
SELECT * FROM persons WHERE upper(first_name) = 'CHRISTOFER' OR first_name = 'Veronica';

-- LIKE normal
SELECT * FROM persons WHERE upper(first_name) LIKE 'CHRISTOFER';

-- LIKE un sólo caracter '_'
SELECT * FROM persons WHERE upper(first_name) LIKE 'CHRIST_F_R' ;

-- LIKE varios caracteres '%'
SELECT * FROM persons WHERE upper(first_name) LIKE '%R';

-- ILIKE
SELECT * FROM persons WHERE first_name ILIKE 'cHristo%';

-- BETWEEN
SELECT * FROM persons WHERE birthday BETWEEN '1980-01-01' AND '2021-12-31';

-- IN VALORES
SELECT * FROM jobs WHERE persons_id IN ('141fb6c5-387e-43d1-a217-57b69ddfb6fe', '141fb6c5-387e-43d1-a217-57b69ddfb6ad');

-- IN SELECT
SELECT * 
FROM jobs
WHERE persons_id IN (SELECT id FROM persons);

SELECT * FROM persons;

SELECT * FROM persons 
WHERE id IN (SELECT persons_id FROM jobs);

-- IS NULL
SELECT * FROM persons WHERE updated_at IS NULL;

-- NOT
SELECT * FROM persons WHERE updated_at IS NOT NULL;

SELECT * FROM persons 
WHERE id NOT IN (SELECT persons_id FROM jobs);
