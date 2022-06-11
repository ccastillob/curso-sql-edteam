

-- Ordenar el resultado de la consulta
SELECT * FROM persons;

-- ORDER BY número de campo
SELECT * 
FROM persons
ORDER BY 2;

SELECT * 
FROM persons
ORDER BY 2 DESC;

SELECT * 
FROM persons
ORDER BY 2 DESC, 5 DESC;

-- ORDER BY nombre del campo
SELECT * 
FROM persons
ORDER BY last_name;

SELECT * 
FROM persons
ORDER BY last_name DESC;

