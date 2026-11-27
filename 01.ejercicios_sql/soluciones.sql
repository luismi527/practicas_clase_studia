--#### Solución de del taller
--## Nivel 1 · Mirar la tabla

--1. Muestra cinco filas de `prestamos` con las columnas `prestamo_id`, `socio_id`, `libro_id` y `fecha_prestamo`.
SELECT 
 prestamo_id, socio_id, libro_id, fecha_prestamo
FROM `curso-estudia-intermedio.biblioteca.prestamos`
LIMIT 5

--2. ¿Cuántos libros hay en el catálogo?
SELECT
 COUNT(DISTINCT libro_id)
FROM `curso-estudia-intermedio.biblioteca.libros`


--3. ¿Cuántos socios están activos?
SELECT 
 COUNT(DISTINCT socio_id)
FROM `curso-estudia-intermedio.biblioteca.socios`
WHERE activo is true


--## Nivel 2 · Filas y personas
--Es el problema de la escena 2: Lucía contó filas y creyó que eran personas.

--4. ¿Cuántos préstamos tiene «Dune»? ¿Cuántas personas distintas lo pidieron?
--Esta es la cantidad de préstamos:
SELECT COUNT(*)
 libro_id
FROM `curso-estudia-intermedio.biblioteca.prestamos`
WHERE libro_id = 1

-- Personas distintas que lo pidieron:
SELECT 
 COUNT(DISTINCT socio_id)
FROM `curso-estudia-intermedio.biblioteca.prestamos`
WHERE libro_id =1


--5. Haz lo mismo para «Emma». ¿Coinciden los dos números? ¿Por qué sí o por qué no?
--Esta es la cantidad de préstamos:
SELECT COUNT(*)
 libro_id
FROM `curso-estudia-intermedio.biblioteca.prestamos`
WHERE libro_id = 2

-- Personas distintas que lo pidieron:
SELECT 
 COUNT(DISTINCT socio_id)
FROM `curso-estudia-intermedio.biblioteca.prestamos`
WHERE libro_id =2
--No coinciden, porque un socio puede hacer más d eun préstamo del libro.

--6. ¿Cuántas filas tiene la tabla `prestamos` en total? ¿Y cuántos socios distintos aparecen en ella?

--El número de filas es:
SELECT 
 COUNT(*)
FROM `curso-estudia-intermedio.biblioteca.prestamos`

--El número de socios distintos es:
SELECT 
 COUNT(DISTINCT socio_id)
FROM `curso-estudia-intermedio.biblioteca.prestamos`

--## Nivel 3 · Indicadores y cortes

--Son los indicadores de la ficha de Lucía.

--7. Préstamos por libro: los cinco libros más prestados, con su título.
--8. Préstamos por categoría. Necesitarás unir `prestamos` con `libros`.
--9. Préstamos por mes.
--10. ¿Cuántos préstamos siguen abiertos, es decir, sin fecha de devolución?


