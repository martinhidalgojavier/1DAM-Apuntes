## Relación 2: Arrays

### 1. Registro de Temperatura Diaria

Escribe un programa que permita al usuario ingresar las temperaturas registradas durante una semana (7 días). Una vez ingresadas las temperaturas, el programa debe mostrar al usuario un menú con las siguientes opciones:

1. Mostrar la temperatura más alta registrada.
2. Mostrar la temperatura más baja registrada.
3. Calcular la temperatura promedio de la semana.
4. Salir del programa.

El programa debe ejecutarse hasta que el usuario elija la opción de salir.

*Solución:*
```javascript

```

### 2. **Sistema de Puntuación de un Videojuego**

Escribe un programa que gestione las puntuaciones de los jugadores en un videojuego utilizando dos arrays: uno para los nombres de los jugadores y otro para sus respectivas puntuaciones. El programa debe funcionar de la siguiente manera:

1. **Crea dos arrays**:
   - Uno para almacenar los nombres de los últimos 5 jugadores.
   - Otro para almacenar las puntuaciones correspondientes de esos jugadores.

2. El programa debe mostrar un menú con las siguientes opciones:
   - **Añadir un nuevo jugador y su puntuación**: El usuario debe poder ingresar el nombre del jugador y su puntuación. La información del jugador más antiguo (el primer elemento de ambos arrays) debe ser eliminada y los nuevos datos deben añadirse al final de ambos arrays.
   - **Mostrar los jugadores y sus puntuaciones actuales**: Se deben mostrar los nombres de los jugadores junto con sus respectivas puntuaciones.
   - **Salir del programa**: Terminar la ejecución del programa.

*Solución*
```javascript

```

3. **Ejecución continua**: El programa debe seguir ejecutándose hasta que el usuario seleccione la opción de salir.

#### Ejemplo de arrays iniciales:
```javascript
const jugadores = ["Jugador1", "Jugador2", "Jugador3", "Jugador4", "Jugador5"]
const puntuaciones = [120, 200, 150, 180, 220]
```

### 3. Sistema de Compras en Almacén

Desarrolla un programa que gestione las compras en un almacén. Para esto:

1. Crea un array que contenga los nombres de 10 productos disponibles en el almacén.
2. Crea otro array que contenga los precios correspondientes a esos 10 productos.
3. El programa debe permitir al usuario realizar una compra solicitando el nombre del producto y la cantidad deseada.
4. El programa debe buscar el precio del producto seleccionado, multiplicarlo por la cantidad y añadirlo al total de la compra.
5. Si el usuario escribe "FIN", el programa debe finalizar la compra, mostrando un resumen con todos los productos adquiridos, sus cantidades, y el costo total a pagar.

#### Ejemplo de arrays:
```javascript

```

### 4. **Gestión de Inventario de una Librería**

Escribe un programa que permita al usuario gestionar el inventario de una librería. El programa debe usar dos arrays: uno para almacenar los títulos de los libros y otro para almacenar las cantidades disponibles de cada libro. El usuario debe poder realizar las siguientes acciones a través de un menú:

1. Añadir un nuevo libro al inventario (con su título y cantidad).
2. Actualizar la cantidad de un libro existente.
3. Ver el inventario completo (título y cantidad de cada libro).
4. Salir del programa.

El programa debe actualizar el inventario según las acciones del usuario y seguir ejecutándose hasta que se elija la opción de salir.

*Solución*
```javascript

```

### 5. **Sistema de Registro de Calificaciones**

Desarrolla un programa que permita registrar y gestionar las calificaciones de los estudiantes en una clase. Usa dos arrays: uno para los nombres de los estudiantes y otro para sus calificaciones. El programa debe ofrecer al usuario un menú con las siguientes opciones:

1. Añadir un estudiante y su calificación.
2. Mostrar la calificación promedio de la clase.
3. Mostrar la calificación más alta y el nombre del estudiante correspondiente.
4. Mostrar la calificación más baja y el nombre del estudiante correspondiente.
5. Salir del programa.

*Solución:*
```javascript

```


### 6. **Sistema de Seguimiento de Tareas**

Desarrolla un programa que permita hacer un seguimiento de las tareas diarias de un equipo. El programa debe usar dos arrays: uno para almacenar los nombres de las tareas y otro para almacenar el estado de cada tarea (*true* = completada y *false* = pendiente). El menú del programa debe ofrecer las siguientes opciones:

1. Añadir una nueva tarea.
2. Marcar una tarea como completada.
3. Ver la lista de tareas pendientes.
4. Ver la lista de tareas completadas.
5. Salir del programa.

*Solución*
```javascript

```

### 7. **Control de Gastos Mensuales**

Escribe un programa que permita al usuario llevar un control de sus gastos mensuales. Usa dos arrays: uno para los nombres de los gastos (por ejemplo, "comida", "transporte", etc.) y otro para las cantidades gastadas en cada categoría. El programa debe mostrar un menú con las siguientes opciones:

1. Añadir un nuevo gasto (nombre y cantidad).
2. Ver el total de gastos hasta el momento.
3. Ver los gastos más altos y más bajos del mes.
4. Ver el promedio de gasto diario (suponiendo un mes de 30 días).
5. Salir del programa.

*Solución*
```javascript

```

### 8. **Gestión de Reservas de un Restaurante**

Escribe un programa para gestionar las reservas en un restaurante. Usa dos arrays: uno para los nombres de los clientes que han hecho una reserva y otro para almacenar el número de personas que cada cliente ha reservado. El programa debe mostrar un menú con las siguientes opciones:

1. Añadir una nueva reserva (nombre del cliente y número de personas).
2. Ver la lista de reservas actuales.
3. Calcular el total de personas reservadas para ese día.
4. Cancelar una reserva existente (por nombre del cliente).
5. Salir del programa.

*Solución:*
```javascript

```