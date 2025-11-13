### 1. Simular el Lanzamiento de un Dado  
Escribe una función llamada `lanzarDado` que devuelva un número entero aleatorio entre 1 y 6, como si estuvieras lanzando un dado. El número debe ser entre 1 y 6, incluyendo ambos.

*Solución:*
```javascript
    function lanzarDado() {
        let numeroDado = Math.floor(Math.random() * 6) + 1
        return numeroDado
    }
    //---------------------MAIN----------------
    alert(lanzarDado())
    alert(lanzarDado())
    alert(lanzarDado())
    alert(lanzarDado())
```
### 2. Simular el Lanzamiento de Dos Dados y Sumar los Resultados  
Crea una función llamada `lanzarDosDados` que lance dos dados, es decir, que genere dos números aleatorios entre 1 y 6 y los sume. La función debe devolver la suma de estos dos números. Por ejemplo, si los dados muestran 3 y 4, el resultado será 7.

*Solución:*
```javascript
    function lanzarDado() {
        let numeroDado = Math.floor(Math.random() * 6) + 1
        return numeroDado
    }

    function lanzarDosDados() {
        let dado1 = lanzarDado()
        let dado2 = lanzarDado()
        let suma = dado1 + dado2
        return suma        
    }    

    let resultadoLanzarDosDados = lanzarDosDados()
    alert(resultadoLanzarDosDados)

```
### 3. Generar un Array de Números Enteros Aleatorios  
Crea una función llamada `arrayAleatorio` que reciba dos parámetros: `cantidad` (que indica cuántos números generar) y `max` (que es el valor máximo de cada número). Esta función debe devolver un array que contenga `cantidad` de números enteros aleatorios entre 0 y `max`. Por ejemplo, si `cantidad` es 5 y `max` es 20, podría devolver `[5, 12, 19, 8, 3]`.

*Solución:*
```javascript
    function arrayAleatorio(cantidad, max) {
        let resultado = []
        for (let i = 0; i < cantidad; i++) {
            resultado.push(Math.floor(Math.random() * (max + 1)))
        }
        return resultado

    }
    alert(arrayAleatorio(4, 50))
```
### 4. Generar un Array de Números Enteros Aleatorios en un Rango  
Escribe una función `arrayAleatorioEnRango` que reciba tres parámetros: `cantidad` (cuántos números generar), `min` y `max` (el rango de cada número). Esta función debe devolver un array que contenga `cantidad` de números aleatorios entre `min` y `max`. Por ejemplo, si `cantidad` es 4, `min` es 10 y `max` es 30, el array podría ser `[15, 22, 11, 29]`.

*Solución:*
```javascript
    function arrayAleatorio(cantidad, min, max) {
        let resultado = []
        for (let i = 0; i < cantidad; i++) {
            resultado.push(Math.floor(Math.random() * (max - min + 1)) + min)
        }
        return resultado

    }
    alert(arrayAleatorio(4, 5, 10))
```
### 5. Generar una Lista de 10 Caras o Cruces Aleatorios  
Escribe una función llamada `caraOCruz` que devuelva "Cara" o "Cruz" al azar. Luego, crea otra función llamada `listaCarasOCruces` que use `caraOCruz` 10 veces para generar una lista de 10 resultados de "Cara" o "Cruz".

*Solución:*
```javascript
    function caraOCruz() {
        let aleatorio = Math.floor(Math.random() * 2)
        let respuesta = ""
        //if (!aleatorio) {
        if (aleatorio == 0) {
            respuesta = "Cara"
        } else {
            respuesta = "Cruz"
        }
        return respuesta
    }
    function listaCarasOCruces() {
        let cantidad = 10
        let listaResultados = []
        for (let i = 0; i < cantidad; i++) {
            listaResultados.push(caraOCruz())
        }
        return listaResultados
    }
    let arrayCarasoCruces = listaCarasOCruces()
    
    alert(arrayCarasoCruces.join(' ')) 
```
### 6. Simular el Lanzamiento de un Dado con un Número de Caras Definido por el Usuario  
Escribe una función `lanzarDadoPersonalizado` que reciba un número `caras` y devuelva un número aleatorio entre 1 y `caras`. Esto debe funcionar para dados con diferente número de caras, por ejemplo, un dado de 20 caras.

*Solución:*
```javascript
    function lanzarDadoPersonalizado(caras) {
        let numeroDado = Math.floor(Math.random() * caras ) + 1
        return numeroDado
    }
    //---------------------MAIN----------------
    alert(lanzarDadoPersonalizado(20))
```
### 7. Juego: Adivina el Número  
Crea una función `juegoAdivinaNumero` que genere un número aleatorio entre 1 y 10. Pídele al usuario que adivine el número, y dile si el número que ingresó es menor, mayor o igual al número generado.

*Solución:*
```javascript
    function juegoAdivinaNumero() {
        let numeroAleatorio = Math.floor(Math.random() * 10) + 1
        return numeroAleatorio
    }

    function jugar1Turno(numeroUsuario) {
        let mensaje = ""
        if (numeroAveriguar > numeroUsuario) {
            mensaje = "Tu numero es menor"
        } else if (numeroAveriguar < numeroUsuario) {
            mensaje = "Tu numero es mayor"
        } else {
            mensaje = "Has averiguado el numero"
        }
        return mensaje
    }

    //----------------MAIN----------
    let numeroAveriguar = juegoAdivinaNumero()
    let resultado = ""
    while (resultado != "Has averiguado el numero") {
        resultado = jugar1Turno(Number(prompt("Introduce un numero a ver si lo averiguas")))
    }
    alert(resultado)

```
### 8. Seleccionar un Elemento Aleatorio de una Lista  
Crea una función `elementoAleatorio` que reciba un array como parámetro y devuelva un elemento aleatorio de ese array. Por ejemplo, si el array es `['a', 'b', 'c']`, la función podría devolver `b` o cualquier otro elemento del array.

*Solución:*
```javascript
    function elementoAleatorio(lista) {
        let indice = Math.floor(Math.random() * lista.length)
        return lista[indice]

    }

    alert(elementoAleatorio(['a' ,3, [1,2,3], "COLORES"]))
```
### 9. Generar una Contraseña Aleatoria de Longitud Fija  
Escribe una función `generarContraseña` que reciba un número `longitud` y devuelva una cadena de caracteres aleatorios (formada por letras y números) de esa longitud. Por ejemplo, si `longitud` es 8, podría devolver algo como `a7b3f2d8`. Puedes usar un array de letras y números para ir eligiendo de forma aleatoria.

*Solución:*
```javascript
        function elementoAleatorio(lista) {
        let indice = Math.floor(Math.random() * lista.length)
        return lista[indice]
    }

    function generarContrasenia(luis) {
        let contrasenia = ""
        const CARACTERESDISPONIBLES = [
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
            'u', 'v', 'w', 'x', 'y', 'z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
            'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
            'U', 'V', 'W', 'X', 'Y', 'Z',
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
        ]
        for (let i = 0; i < luis; i++) {
            contrasenia += elementoAleatorio(CARACTERESDISPONIBLES)            
        }
        return contrasenia
    }
    let longitudContrasenia = Number(prompt("Introduce la longitud de la contraseña"))
    alert(generarContrasenia(longitudContrasenia))

```
### 10. Simular una Carta de una Baraja  
Escribe una función `cartaAleatoria` que devuelva una carta aleatoria de una baraja (con un número del 1 al 13, que representaría el valor, y uno de los cuatro palos: corazones, diamantes, tréboles o picas).

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/Ufmlq-VaGY0)

*Solución:*
```javascript

```
### 11. Simular un Juego de Piedra, Papel o Tijeras  
Crea una función `juegoPiedraPapelTijeras` que genere aleatoriamente una elección entre "Piedra", "Papel" o "Tijeras" y permite al usuario jugar contra la máquina.

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/cc4GbQVblAk)

*Solución:*
```javascript

```
### 12. Simular un Lanzamiento de Moneda hasta Obtener 3 "Caras"  
Escribe una función `simularLanzamientoHastaTresCaras` que simule el lanzamiento de una moneda (cara o cruz) hasta que obtenga 3 veces "Cara" de forma seguida. Devuelve cuántos lanzamientos se necesitaron para llegar a tener 3 "Caras" y el array con todos los lanzamientos.


*Solución:*
```javascript

```