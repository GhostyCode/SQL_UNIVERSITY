# SQL_UNIVERSITY
Trabajo colaborativo de la materia de Base de Datos.

---
Consulta 1:

<code> select * from clientes c,ventas v where c.id = v.clientes_id </code>

Consulta 2:

<code>Select c. nombre, v.* From clientes c 
Join ventas v on (c.id=v.clientes_id) 
Where v.fecha between "2023-01-20" and "2023-03-22" order by v.fecha asc</code>

Consulta 3:

<code>Select c.nombre From clientes c 
left Join ventas v on (c.id=v.clientes_id)
Where v.clientes_id is null</code>
