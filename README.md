# SQL_UNIVERSITY
Trabajo colaborativo de la materia de Base de Datos.

---
Consulta 1:

<code> select * from clientes c,ventas v where c.id = v.clientes_id </code>

Consulta 2:

<code>Select c. nombre, v.* From clientes c Join ventas v on (c.id=clientes_id) Where v.fecha between "2023-01-20" and "2023-03-22" order by v.fecha asc</code>
