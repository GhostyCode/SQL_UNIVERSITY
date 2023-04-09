# BASE DE DATOS BIBLIOTECA
Trabajo colaborativo de la materia de Base de Datos.
---

<p>

### ¡Ejercicio 4!

A partir del siguiente enunciado, diseñar una base de datos.

"En la biblioteca del centro se manejan fichas de autores y libros. En la ficha de cada autor se tiene el código de autor y el nombre. De cada libro se guarda el código, título, ISBN, editorial y número de página. 

Un autor puede escribir varios libros, y un libro puede ser escrito por varios autores. Un libro está formado por ejemplares. Cada ejemplar tiene un código y una localización. Un libro tiene muchos ejemplares y un ejemplar pertenece sólo a un libro.

Los usuarios de la biblioteca del centro también disponen de ficha en la biblioteca y sacan ejemplares de ella. De cada usuario se guarda el código, nombre, dirección y teléfono. Los ejemplares son prestados a los usuarios. Un usuario puede tomar prestados varios ejemplares, y un ejemplar puede ser prestado a varios usuarios. De cada préstamo interesa guardar la fecha de préstamo y la fecha de devolución".

Realizar las relaciones oportunas entre tablas e insertar cinco registros en cada una de las tablas.

<div>
  <img src="https://github.com/santander123/SQL_UNIVERSITY/blob/main/01.%20Proyecto_Tienda/Images/Consulta%201.png" alt="Consulta 1">
</div>

</p>

<br>

---
<details><summary>Consulta 1</summary>
<p>

#### Obtener el nombre del usuario que presto más libros, y la cantidad de veces que presto un libro!

```SQL
  select nombre, count(p.idPrestar) as 'Cantidad de veces que presto un libro'
  from usuarios u join prestar p on(u.idUsuario =p.idUsuario)
  group by p.idUsuario
  order by count(p.idPrestar) desc
  limit 1;
```

<div>
  <img src="https://github.com/santander123/SQL_UNIVERSITY/blob/main/01.%20Proyecto_Tienda/Images/Consulta%201.png" alt="Consulta 1">
</div>

</p>
</details>

<br>

---
<details><summary>Consulta 2</summary>
<p>

#### Obtener el nombre del usuario que presto más libros, y la cantidad de veces que presto un libro!

```SQL
  select nombre, count(p.idPrestar) as 'Cantidad de veces que presto un libro'
  from usuarios u join prestar p on(u.idUsuario =p.idUsuario)
  group by p.idUsuario
  order by count(p.idPrestar) desc
  limit 1;
```

<div>
  <img src="https://github.com/santander123/SQL_UNIVERSITY/blob/main/01.%20Proyecto_Tienda/Images/Consulta%201.png" alt="Consulta 1">
</div>

</p>
</details>

<br>

---
<details><summary>Consulta 3</summary>
<p>

#### Obtener el nombre del usuario que presto más libros, y la cantidad de veces que presto un libro!

```SQL
  select nombre, count(p.idPrestar) as 'Cantidad de veces que presto un libro'
  from usuarios u join prestar p on(u.idUsuario =p.idUsuario)
  group by p.idUsuario
  order by count(p.idPrestar) desc
  limit 1;
```

<div>
  <img src="https://github.com/santander123/SQL_UNIVERSITY/blob/main/01.%20Proyecto_Tienda/Images/Consulta%201.png" alt="Consulta 1">
</div>

</p>
</details>