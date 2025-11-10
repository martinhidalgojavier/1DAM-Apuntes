# Unidad Didáctica 3: Funciones y Números Aleatorios en JavaScript

## 1. Introducción a las Funciones en JavaScript

Las funciones en JavaScript son uno de los bloques fundamentales en la programación, ya que permiten crear piezas de código que pueden reutilizarse cada vez que necesitamos realizar una misma tarea. En lugar de escribir las mismas instrucciones múltiples veces, agrupamos esas instrucciones dentro de una función, y cada vez que necesitemos hacer esa tarea, simplemente llamamos a la función.

En JavaScript, una función se declara con la palabra clave `function`, seguida por un nombre descriptivo, paréntesis para definir parámetros (si la función los necesita) y un bloque de código que contiene las instrucciones de la función. Los parámetros son valores de entrada que le damos a la función para que realice la tarea con datos específicos.

### Estructura y Sintaxis Básica de una Función en JavaScript

La estructura general para declarar una función es la siguiente:

```javascript
function nombreFuncion(parametro1, parametro2, ...) {
  // Código que realiza la tarea específica
  return resultado
}
```

#### Componentes de una Función

1. **Palabra clave `function`**: Le indica a JavaScript que estamos definiendo una función.
2. **Nombre de la función**: Es un identificador descriptivo que debería dar una idea clara de lo que hace la función. Por ejemplo, si la función suma dos números, podríamos llamarla `sumar`.
3. **Parámetros (opcional)**: Son variables que la función recibe para realizar su tarea. Por ejemplo, si queremos sumar dos números, los parámetros serían los números que queremos sumar, `a` y `b`. Los parámetros se definen dentro de los paréntesis `()`, separados por comas si hay más de uno.
4. **Bloque de código `{}`**: Es el conjunto de instrucciones que define lo que hará la función. Estas instrucciones se colocan entre llaves `{}`.
5. **`return` (opcional)**: Es la palabra clave que permite devolver un resultado de la función. El `return` termina la ejecución de la función y le entrega un valor al código que llamó a la función.

### Ejemplo de una Función Simple: Sumar dos Números

La siguiente función llamada `sumar` recibe dos parámetros, `a` y `b`, que representan los dos números que queremos sumar. La función usa `return` para devolver la suma de `a` y `b`.

```javascript
function sumar(a, b) {
  return a + b
}
```

#### Explicación del Ejemplo

- **Nombre de la función**: `sumar` (indica que la función realizará una suma).
- **Parámetros**: `a` y `b` (son los números que queremos sumar).
- **Cuerpo de la función**: `{ return a + b }` (suma los valores de `a` y `b` y devuelve el resultado).

#### Uso de la Función

Para usar la función, simplemente la llamamos por su nombre y le damos dos valores para `a` y `b`. La función nos devuelve el resultado de la suma:

```javascript
let resultado = sumar(5, 3)
console.log(resultado) // Imprime 8
```

En este caso, llamamos a la función con los valores 5 y 3. La función suma estos valores y devuelve 8, que es el resultado de `sumar(5, 3)`.

### Funciones sin Parámetros

No todas las funciones necesitan recibir parámetros. A veces, simplemente queremos que una función realice una acción específica sin datos adicionales.

#### Ejemplo de Función sin Parámetros

```javascript
function saludar() {
  return "¡Hola, mundo!"
}
```

#### Explicación del Ejemplo

Esta función llamada `saludar` no recibe ningún parámetro y simplemente devuelve el mensaje `"¡Hola, mundo!"`.

#### Uso de la Función

Llamamos a la función `saludar` y obtenemos el saludo como resultado:

```javascript
let mensaje = saludar()
console.log(mensaje) // Imprime "¡Hola, mundo!"
```

---

## 2. La Single Exit Rule (SER)

La **Single Exit Rule (SER)** o **Regla de Salida Única** es una práctica recomendada en programación que indica que cada función debe tener un único punto de salida o `return`. Esto significa que al escribir una función, debemos evitar tener múltiples `return` repartidos a lo largo del código de la función. En su lugar, debemos estructurar la función de tal forma que solo exista un `return` al final del bloque de código. 

La aplicación de la SER ofrece varias ventajas:
- **Claridad en el flujo de la función**: Con un único `return`, el flujo de la función es más claro y predecible.
- **Facilidad en la depuración**: Tener una sola salida facilita encontrar y corregir errores.
- **Control de errores**: Es más fácil gestionar errores y controlar el flujo de salida si solo existe un punto de salida.
- **Legibilidad y mantenimiento del código**: Otros programadores pueden leer y entender mejor una función que cumple con la SER, especialmente cuando se trata de funciones más largas o complejas.

Siguiendo la SER, el código de la función se vuelve más limpio y menos propenso a errores, ya que solo existe una ruta de salida clara.

### Ejemplo Explicativo de la Single Exit Rule

Veamos cómo aplicar la SER usando un ejemplo práctico. Supongamos que queremos escribir una función llamada `obtenerEstado`, que toma un parámetro `edad` y devuelve el estado de una persona en función de su edad:
- Si la persona tiene menos de 18 años, se le considera "Menor de edad".
- Si tiene entre 18 y 64 años, se le considera "Adulto".
- Si tiene 65 años o más, se le considera "Senior".

#### Sin Aplicar la SER (Malas Prácticas)

En el ejemplo a continuación, la función tiene múltiples puntos de retorno (`return`), lo que va en contra de la SER:

```javascript
function obtenerEstado(edad) {
  if (edad < 18) return "Menor de edad"
  if (edad < 65) return "Adulto"
  return "Senior"
}
```

#### Análisis de la Versión sin SER

- **Múltiples salidas**: Hay tres `return` en esta función, uno para cada condición.
- **Problemas potenciales**: Si la función crece en complejidad o requiere más condiciones, puede volverse difícil de leer y seguir, especialmente si hay que revisar cada `return` para entender todas las rutas de salida.
- **Complejidad en la depuración**: Al depurar, es necesario verificar que cada `return` esté funcionando como se espera, lo cual es más difícil con varias salidas.

#### Con SER (Buenas Prácticas)

Reescribamos la función `obtenerEstado` para que tenga un único `return`, cumpliendo así con la SER:

```javascript
function obtenerEstado(edad) {
  let resultado

  if (edad < 18) {
    resultado = "Menor de edad"
  } else if (edad < 65) {
    resultado = "Adulto"
  } else {
    resultado = "Senior"
  }

  return resultado
}
```

#### Análisis de la Versión con SER

- **Un único punto de salida**: Solo hay un `return resultado` al final de la función, cumpliendo con la SER.
- **Flujo claro y predecible**: La variable `resultado` se actualiza en función de las condiciones, y solo al final se devuelve su valor. Esto facilita entender cómo cambia `resultado` en función de `edad`.
- **Facilita la gestión de errores**: Con un solo `return`, es más fácil agregar lógica de depuración, ya que solo necesitamos verificar el valor de `resultado` en un solo punto.
- **Legibilidad**: La función es más fácil de leer y seguir, especialmente en funciones más complejas.

### Ejemplos Adicionales para Comprender la SER

Para reforzar la importancia de la SER, veamos algunos ejemplos adicionales y cómo implementar esta regla en cada caso.

#### Ejemplo 1: Clasificar Números

Supongamos que queremos escribir una función `clasificarNumero` que recibe un número y devuelve "Positivo" si el número es mayor que 0, "Negativo" si es menor que 0 y "Cero" si es igual a 0.

Sin la SER, podríamos escribir la función de esta forma:

```javascript
function clasificarNumero(numero) {
  if (numero > 0) return "Positivo"
  if (numero < 0) return "Negativo"
  return "Cero"
}
```

Con la SER, reescribimos la función para que tenga un solo `return`:

```javascript
function clasificarNumero(numero) {
  let resultado

  if (numero > 0) {
    resultado = "Positivo"
  } else if (numero < 0) {
    resultado = "Negativo"
  } else {
    resultado = "Cero"
  }

  return resultado
}
```

#### Ejemplo 2: Verificar Edad para Votar

Ahora supongamos que queremos escribir una función `puedeVotar` que recibe un número `edad` y devuelve `true` si la persona tiene 18 años o más, y `false` si es menor de 18 años.

Sin la SER:

```javascript
function puedeVotar(edad) {
  if (edad >= 18) return true
  return false
}
```

Con la SER:

```javascript
function puedeVotar(edad) {
  let puedeVotar

  if (edad >= 18) {
    puedeVotar = true
  } else {
    puedeVotar = false
  }

  return puedeVotar
}
```

En este caso, aunque la función es simple, el uso de la SER permite tener una estructura clara que se mantendría ordenada incluso si la función creciera en complejidad.

#### Ejemplo 3: Calcular Descuento en un Precio

Supongamos que tenemos una función `calcularDescuento` que toma un precio y devuelve el precio con un descuento aplicado según el valor del precio:

- Si el precio es mayor o igual a 100, se aplica un 20% de descuento.
- Si el precio es menor que 100 y mayor o igual a 50, se aplica un 10% de descuento.
- Si el precio es menor que 50, no se aplica ningún descuento.

Sin la SER:

```javascript
function calcularDescuento(precio) {
  if (precio >= 100) return precio * 0.8
  if (precio >= 50) return precio * 0.9
  return precio
}
```

Con la SER:

```javascript
function calcularDescuento(precio) {
  let precioConDescuento

  if (precio >= 100) {
    precioConDescuento = precio * 0.8
  } else if (precio >= 50) {
    precioConDescuento = precio * 0.9
  } else {
    precioConDescuento = precio
  }

  return precioConDescuento
}
```

En este ejemplo, seguimos la SER usando una sola salida con `return precioConDescuento` al final, lo que hace que el flujo sea más claro.

### Beneficios Recapitulativos de Usar la SER

1. **Facilita el Mantenimiento**: Si queremos hacer cambios en la lógica de salida de la función, solo tenemos que ajustar el valor de una variable y el retorno final.
2. **Legibilidad y Orden**: El código resulta más fácil de leer y entender, especialmente en funciones más complejas.
3. **Control del Flujo**: Con una sola salida, podemos ver exactamente cómo se calcula el resultado en cada caso, lo cual facilita identificar errores.
4. **Flexibilidad para Expandir la Lógica**: Al agregar condiciones adicionales, no tenemos que preocuparnos por múltiples puntos de salida simplemente modificamos la lógica interna y el retorno final sigue siendo el mismo.

La SER es una buena práctica para garantizar que el flujo de nuestras funciones sea claro, predecible y fácil de seguir. Aplicar esta regla ayuda a escribir código de alta calidad, facilitando el mantenimiento y la comprensión tanto para el autor del código como para otros desarrolladores.

---

## 3. Generación de Números Aleatorios en JavaScript

La generación de números aleatorios es una función útil en JavaScript que permite obtener resultados impredecibles en situaciones como juegos, simulaciones, o aplicaciones donde se requiere cierta aleatoriedad. En JavaScript, esta funcionalidad se logra utilizando la función `Math.random()`.

### Conceptos Básicos de `Math.random()`

La función `Math.random()` forma parte del objeto `Math` en JavaScript. Su objetivo principal es generar un número pseudoaleatorio, es decir, un número que parece aleatorio pero que en realidad sigue un patrón basado en un algoritmo. Este número será un decimal entre 0 (incluido) y 1 (excluido), lo que significa que `Math.random()` generará siempre un valor mayor o igual a 0 y menor que 1, pero nunca igual a 1.

#### Ejemplo de `Math.random()`

Al usar `Math.random()`, cada vez que ejecutamos la función obtenemos un número decimal diferente:

```javascript
let aleatorio = Math.random() // Genera un número decimal entre 0 y 1
```

Ejecutar este código varias veces producirá diferentes resultados dentro del rango de 0 a 1, como:
- 0.4357
- 0.9845
- 0.2371

Esta es la funcionalidad básica de `Math.random()`, pero frecuentemente necesitamos trabajar con números enteros y en rangos distintos de 0 a 1.

### Generación de Números Aleatorios en Diferentes Rangos

Para generar números aleatorios enteros en otros rangos, combinamos `Math.random()` con otras funciones matemáticas como `Math.floor()` y `Math.ceil()`. A continuación se explican varias formas de obtener números aleatorios en diferentes tipos de rangos.

#### Generación de un Número Entero Aleatorio Entre 0 y un Valor Máximo

Si necesitas un número aleatorio entre 0 y un valor específico `max`, puedes usar la fórmula:

```javascript
Math.floor(Math.random() * (max + 1))
```

Esta fórmula funciona de la siguiente manera:
1. **`Math.random() * (max + 1)`**: Multiplicamos el número aleatorio entre 0 y 1 por `(max + 1)`, para expandir el rango desde 0 hasta el valor `max` incluido.
2. **`Math.floor()`**: Redondea hacia abajo el número resultante para asegurar que sea un entero, eliminando la parte decimal.

Por ejemplo, si queremos un número entre 0 y 10:

```javascript
let numeroAleatorio = Math.floor(Math.random() * 11) // Genera un número entre 0 y 10
console.log(numeroAleatorio)
```

Esto podría dar resultados como 3, 7, 0, o cualquier valor entre 0 y 10.

#### Generación de un Número Entero Aleatorio Entre 1 y un Valor Máximo

Si necesitas un número aleatorio entre 1 y un valor específico `max` (excluyendo el 0), la fórmula cambia ligeramente:

```javascript
Math.floor(Math.random() * max) + 1
```

Aquí:
1. **`Math.random() * max`**: Genera un decimal entre 0 y `max`.
2. **`Math.floor()`**: Redondea hacia abajo para obtener un número entero.
3. **`+ 1`**: Se añade 1 al resultado final para ajustar el rango y asegurar que siempre incluya el valor 1.

Por ejemplo, si queremos un número entre 1 y 10:

```javascript
let numeroAleatorio = Math.floor(Math.random() * 10) + 1 // Genera un número entre 1 y 10
console.log(numeroAleatorio)
```

Este código nos daría valores como 1, 5, 10, etc., siempre entre 1 y 10, sin incluir el 0.

#### Generación de un Número Entero Aleatorio Entre un Mínimo y un Máximo

Si necesitas un número aleatorio en un rango específico entre un valor mínimo (`min`) y un valor máximo (`max`), la fórmula es la siguiente:

```javascript
Math.floor(Math.random() * (max - min + 1)) + min
```

En esta fórmula:
1. **`Math.random() * (max - min + 1)`**: Genera un número decimal entre 0 y el tamaño del rango `(max - min + 1)`.
2. **`Math.floor()`**: Redondea hacia abajo el número resultante para obtener un entero.
3. **`+ min`**: Ajusta el valor para que el rango empiece desde `min` y termine en `max`.

Ejemplo:

Si queremos un número aleatorio entre 5 y 15:

```javascript
let numeroAleatorio = Math.floor(Math.random() * (15 - 5 + 1)) + 5 // Genera un número entre 5 y 15
console.log(numeroAleatorio)
```

Este código generará números enteros como 5, 9, 12, o cualquier otro valor entre 5 y 15.

#### Generación de un Número Decimal Aleatorio Entre 0 y 1

Esta es la funcionalidad básica de `Math.random()` y es útil cuando necesitamos obtener un número decimal en este rango. `Math.random()` por sí solo genera un número decimal entre 0 y 1, sin necesidad de agregar fórmulas adicionales.

```javascript
let numeroAleatorio = Math.random() // Genera un número decimal entre 0 y 1
console.log(numeroAleatorio)
```

Cada vez que se ejecuta, este código devuelve un número decimal en el rango [0, 1), como:
- 0.4357
- 0.2984
- 0.9743

### Resumen de Generación de Números Aleatorios en Diferentes Rangos

| Propósito                                    | Fórmula                                     | Ejemplo                                   |
|----------------------------------------------|---------------------------------------------|-------------------------------------------|
| Número entre 0 y un valor máximo (`max`)     | `Math.floor(Math.random() * (max + 1))`     | `Math.floor(Math.random() * 11)`          |
| Número entre 1 y un valor máximo (`max`)     | `Math.floor(Math.random() * max) + 1`       | `Math.floor(Math.random() * 10) + 1`      |
| Número entre un mínimo (`min`) y un máximo (`max`) | `Math.floor(Math.random() * (max - min + 1)) + min` | `Math.floor(Math.random() * (15 - 5 + 1)) + 5` |
| Decimal entre 0 y 1                          | `Math.random()`                             | `Math.random()`                           |