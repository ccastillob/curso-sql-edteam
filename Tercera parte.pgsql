
-- 1. Actualizar información

-- UPDATE tabla
-- SET campo1 = valor1, campo2 = valor2, ..., campoN = valorN
-- WHERE campoM = valorM;
UPDATE persons
SET first_name = 'Mia', last_name = 'De la Vega'
WHERE id = '0abdddf9-efb0-407b-abf4-6c3be150571d';

UPDATE persons
SET available = false;

-- 2. Borrar información

-- DELETE FROM tabla WHERE campoM = valorM;
DELETE FROM persons WHERE id IS NULL;

-- TRUNCATE TABLE tabla;
TRUNCATE TABLE persons;
