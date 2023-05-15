# SQL_UNIVERSITY
Trabajo colaborativo de la materia de Base de Datos.

---
<h3>Consulta 1:</h3>

```SQL
  select * from clientes c,ventas v where c.id = v.clientes_id
```

<div>
  <img src="https://github.com/santander123/SQL_UNIVERSITY/blob/main/01.%20Proyecto_Tienda/Images/Consulta%201.png" alt="Consulta 1">
</div>

---
<h3>Consulta 2:</h3>

```SQL
  Select c. nombre, v.* From clientes c 
  Join ventas v on (c.id=v.clientes_id) 
  Where v.fecha between "2023-01-20" and "2023-03-22" order by v.fecha asc
```
<div>
  <img src="https://github.com/santander123/SQL_UNIVERSITY/blob/main/01.%20Proyecto_Tienda/Images/Consulta%202.png" alt="Consulta 1">
</div>

---
<h3>Consulta 3:</h3>

```SQL
  Select c.* From clientes c 
  left Join ventas v on (c.id=v.clientes_id and v.fecha between "2023-01-21" and "2023-03-21" )
  Where v.clientes_id is null
```

<div>
  <img src="https://github.com/santander123/SQL_UNIVERSITY/blob/main/01.%20Proyecto_Tienda/Images/Consulta%203.png" alt="Consulta 1">
</div>

