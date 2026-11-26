# Ejercicios: la biblioteca de Lucía

Practica SQL en BigQuery con los datos de Lucía, la bibliotecaria de la historia. Todo es sintético: no hay personas reales.

Todo se resuelve con SQL en la consola de BigQuery, desde el navegador. Trabajas con las tablas que creaste en tu propio proyecto a partir de los CSV: están en el dataset `biblioteca`, y las consultas las nombran así: `biblioteca.prestamos`, `biblioteca.libros`.

## Las tablas

| Tabla | Qué representa una fila | Columnas |
|---|---|---|
| `libros` | Un libro del catálogo | `libro_id`, `titulo`, `autor`, `categoria`, `anio` |
| `socios` | Una persona inscrita | `socio_id`, `barrio`, `fecha_alta`, `activo` |
| `prestamos` | Un préstamo de enero a marzo de 2026 | `prestamo_id`, `socio_id`, `libro_id`, `fecha_prestamo`, `fecha_devolucion` |
| `prestamos_abril` | Un préstamo de abril, tal como llegó el archivo | las mismas, con las fechas escritas como texto |

Antes de empezar, recuerda dos hábitos: escribe las columnas que necesitas en lugar de `*`, y mira los bytes estimados antes de ejecutar.

## Nivel 1 · Mirar la tabla

1. Muestra cinco filas de `prestamos` con las columnas `prestamo_id`, `socio_id`, `libro_id` y `fecha_prestamo`.
2. ¿Cuántos libros hay en el catálogo?
3. ¿Cuántos socios están activos?

## Nivel 2 · Filas y personas

Es el problema de la escena 2: Lucía contó filas y creyó que eran personas.

4. ¿Cuántos préstamos tiene «Dune»? ¿Cuántas personas distintas lo pidieron?
5. Haz lo mismo para «Emma». ¿Coinciden los dos números? ¿Por qué sí o por qué no?
6. ¿Cuántas filas tiene la tabla `prestamos` en total? ¿Y cuántos socios distintos aparecen en ella?

## Nivel 3 · Indicadores y cortes

Son los indicadores de la ficha de Lucía.

7. Préstamos por libro: los cinco libros más prestados, con su título.
8. Préstamos por categoría. Necesitarás unir `prestamos` con `libros`.
9. Préstamos por mes.
10. ¿Cuántos préstamos siguen abiertos, es decir, sin fecha de devolución?

## Nivel 4 · Calidad de datos (escena 3)

Es lo que le pasó a Lucía en abril.

11. En `prestamos_abril`, ¿hay filas repetidas? Encuentra los `prestamo_id` que aparecen más de una vez.
12. ¿Cuántos préstamos de «Dune» hay en abril contando todas las filas? ¿Y contando cada préstamo una sola vez? Compara con el promedio mensual de enero a marzo.
13. Las fechas de abril llegaron como texto, en formato `dd/mm/aaaa`. Conviértelas a fecha real y cuenta los préstamos de abril por semana.
14. ¿Hay libros del catálogo que nunca se prestaron entre enero y marzo?

## Desafío final

15. Escribe tres revisiones, en forma de consulta, que Lucía podría correr cada mes antes de publicar su informe, una por cada riesgo de su ficha: filas repetidas, fechas en otro formato y libros sin préstamo. Cada una debería devolver cero filas cuando todo está bien.