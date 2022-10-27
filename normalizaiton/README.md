## Normalizacion

> ¿Que son las normas formales?
>
> La normalización es el proceso de organizar los datos de una base de datos. Se incluye la creación de tablas y el establecimiento de relaciones entre ellas según reglas diseñadas tanto para proteger los datos como para hacer que la base de datos sea más flexible al eliminar la redundancia y las dependencias incoherentes.
>
>Hay algunas reglas en la normalización de una base de datos. Cada regla se denomina "forma normal". Si se observa la primera regla, se dice que la base de datos está en "primera forma normal". Si se observan las tres primeras reglas, se considera que la base de datos está en "tercera forma normal". Aunque otros niveles de normalización son posibles, la tercera forma normal se considera el nivel más alto necesario para la mayoría de las aplicaciones.
>
>Puedes encontrar excelente material [aqui](https://learn.microsoft.com/es-es/office/troubleshoot/access/database-normalization-description#description-of-normalization)
---

> ## Primera Forma Normal (1FN):
>
> Esta FN nos ayuda a eliminar los valores repetidos y no atómicos dentro de una base de datos.
>
> Formalmente, una tabla está en primera forma normal si:
>
> - Todos los atributos son atómicos. Un atributo es atómico si los elementos del dominio son simples e indivisibles.
> - No debe existir variación en el número de columnas.
> - Los campos no clave deben identificarse por la clave (dependencia funcional).
> - Debe existir una independencia del orden tanto de las filas como de las columnas; es decir, si los datos cambian de orden no deben cambiar sus significados.
>
> Se traduce básicamente a que si tenemos campos compuestos como por ejemplo “nombre_completo” que en realidad contiene varios datos distintos, en este caso podría ser “nombre”, “apellido_paterno”, “apellido_materno”, etc.
>
> También debemos asegurarnos que las columnas son las mismas para todos los registros, que no haya registros con columnas de más o de menos.
>
> Todos los campos que no se consideran clave deben depender de manera única por el o los campos que si son clave.
>
> Los campos deben ser tales que si reordenamos los registros o reordenamos las columnas, cada dato no pierda el significado.

---

> ## Segunda Forma Normal (2FN)
>
> Esta FN nos ayuda a diferenciar los datos en diversas entidades.
> Formalmente, una tabla está en segunda forma normal si:
>
> - Está en 1FN
> - Sí los atributos que no forman parte de ninguna clave dependen de forma completa de la clave principal. Es decir, que no existen dependencias parciales.
> - Todos los atributos que no son clave principal deben depender únicamente de la clave principal.
>
> Lo anterior quiere decir que sí tenemos datos que pertenecen a diversas entidades, cada entidad debe tener un campo clave separado. Por ejemplo:
>
> ![FN1](/normalizaiton/FN1.jpg)
>
> En la tabla anterior tenemos por lo menos dos entidades que debemos separar para que cada uno dependa de manera única de su campo llave o ID. En este caso las entidades son alumnos por un lado y materias por el otro. En el ejemplo anterior, quedaría de la siguiente manera:
>
> ![FN2](/normalizaiton/FN2.jpg)

---

> ## Tercera Forma Normal (3FN)
>
> Esta FN nos ayuda a separar conceptualmente las entidades que no son dependientes.
> Formalmente, una tabla está en tercera forma normal si:
>
> - Se encuentra en 2FN
> - No existe ninguna dependencia funcional transitiva en los atributos que no son clave
>
> Esta FN se traduce en que aquellos datos que no pertenecen a la entidad deben tener una independencia de las demás y debe tener un campo clave propio. Continuando con el ejemplo anterior, al aplicar la 3FN separamos la tabla alumnos ya que contiene datos de los cursos en ella quedando de la siguiente manera.
>
> ![FN3_1](/normalizaiton/FN3_1.jpg)
>
> ![FN3_2](/normalizaiton/FN3_2.jpg)

---

> ## Cuarta Forma Normal (4FN)
>
> Esta FN nos trata de atomizar los datos multivaluados de manera que no tengamos datos repetidos entre rows.
> Formalmente, una tabla está en cuarta forma normal si:
>
> - Se encuentra en 3FN
> - Los campos multivaluados se identifican por una clave única
>
> Esta FN trata de eliminar registros duplicados en una entidad, es decir que cada registro tenga un contenido único y de necesitar repetir la data en los resultados se realiza a través de claves foráneas.
>
> Aplicado al ejemplo anterior la tabla materia se independiza y se relaciona con el alumno a través de una tabla transitiva o pivote, de tal manera que si cambiamos el nombre de la materia solamente hay que cambiarla una vez y se propagara a cualquier referencia que haya de ella.
>
> ![FN4_1](/normalizaiton/FN4_1.jpg)
>
> ![FN4_2](/normalizaiton/FN4_2.jpg)
