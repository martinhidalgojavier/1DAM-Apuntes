# Operaciones Matemáticas

## 1. **Imprimir un mensaje de saludo**  
Crea una función llamada `saludar` que reciba un nombre como parámetro y devuelva un mensaje de saludo personalizado.

```javascript
function saludar(nombre) {
    let mensaje = 'Hola, ' + nombre
    return mensaje
}

// ================== MAIN ================== //

let saludo = saludar('Juan')
console.log(saludo)
```

## 2. **Suma de dos números**  
Crea una función llamada `sumar` que reciba dos números y devuelva su suma.

```javascript
function sumar(a, b) {
    let suma = a + b
    return suma
}

// ================== MAIN ================== //

let suma = sumar(3, 5)
console.log(suma)
```

## 3. **Número al cuadrado**  
Haz una función llamada `alCuadrado` que reciba un número y devuelva su cuadrado.

```javascript
function alCuadrado(numero) {
    let cuadrado = numero * numero
    return cuadrado
}

// ================== MAIN ================== //

let cuadrado = alCuadrado(4)
console.log(cuadrado)
```

## 4. **¿Es par?**  
Crea una función llamada `esPar` que reciba un número y devuelva `true` si es par o `false` si es impar.

```javascript
function esPar(numero) {
    return (numero % 2 == 0)
}

// ================== MAIN ================== //

let par = esPar(6)
console.log(par)
```

## 5. **Calcular el factorial de un número**  
Haz una función llamada `factorial` que reciba un número y devuelva su factorial calculado de forma iterativa.

```javascript
function factorial(numero) {
    let resultado = 1
    for (let i = 1; i <= numero; i++) {
        resultado *= i
    }
    return resultado
}

// ================== MAIN ================== //

let fact = factorial(5)
console.log(fact)
```

## 6. **Decir si un número es positivo o negativo**  
Crea una función llamada `esPositivo` que reciba un número y devuelva `true` o `false` dependiendo de su valor.

```javascript
function esPositivo(numero) {
    return (numero > 0)
}

// ================== MAIN ================== //

let positivo = esPositivo(-3)
console.log(positivo)
```

## 7. **Convertir grados Celsius a Fahrenheit**  
Haz una función llamada `celsiusAFahrenheit` que reciba un valor en grados Celsius y devuelva su conversión a Fahrenheit usando la fórmula `(Celsius * 9/5) + 32`.

```javascript
function celsiusAFahrenheit(celsius) {
   return (celsius * 9 / 5) + 32
}

// ================== MAIN ================== //

let fahrenheit = celsiusAFahrenheit(25)
console.log(fahrenheit)
```

## 8. **Encontrar el número mayor**  
Crea una función llamada `mayor` que reciba dos números y devuelva el mayor de los dos.

```javascript
function mayor(a, b) {
    let maximo = a

    if (b > a) {
        maximo = b
    }

    return maximo
}

// ================== MAIN ================== //

let maximo = mayor(10, 15)
console.log(maximo)
```

## 9. **Obtener el menor de tres números**  
Crea una función llamada `menorDeTres` que reciba tres números y devuelva el menor de los tres.

```javascript
function menorDeTres(a, b, c) {
    let minimo = a
    if (b < minimo) {
        minimo = b
    }
    if (c < minimo) {
        minimo = c
    }
    return minimo
}

// ================== MAIN ================== //

let minimo = menorDeTres(3, 7, 1)
console.log(minimo)
```

## 10. **Calcular el área de un triángulo**  
Crea una función llamada `areaTriangulo` que reciba la base y la altura de un triángulo y devuelva su área calculada con la fórmula `(base * altura) / 2`.

```javascript
function areaTriangulo(base, altura) {
    let area = (base * altura) / 2
    return area
}

// ================== MAIN ================== //

let area = areaTriangulo(10, 5)
console.log(area)
```

# Manipulación de Arrays

## 11. **Sumar todos los números de un array**  
Crea una función llamada `sumarArray` que reciba un array de números y devuelva la suma de todos sus elementos.

```javascript
    function sumarArray(numerosASumar) {
        let totalSuma = 0

        for (const numeroDelArray of numerosASumar) {
            totalSuma += numeroDelArray            
        }
        return totalSuma
    }
    //-------------------MAIN-----------------
    let numerosDel10Al1 = [10,9,8,7,6,5,4,3,2,1,10]
    let total = sumarArray(numerosDel10Al1)
    alert(total)

```

## 12. **Obtener números impares de un array**  
Crea una función llamada `obtenerImpares` que reciba un array y devuelva un nuevo array con los números impares.

```javascript
    function obtenerImpares(arrayParametro) {
        let numerosImpares = []
        for (const elemento of arrayParametro) {
            if (elemento % 2 != 0) {
                numerosImpares.push(elemento)
            }
        }
        return numerosImpares
    }


    let numerosDel1Al10 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    console.log(obtenerImpares(numerosDel1Al10))

    // O 
    // let resultado = obtenerImpares(numerosDel1Al10)
    // console.log(resultado)

```

## 13. **Invertir un array**  
Crea una función llamada `invertirArray` que reciba un array y devuelva un nuevo array con los elementos en orden inverso.

```javascript
```

## 14. **Calcular el promedio de un array**  
Crea una función llamada `promedioArray` que reciba un array de números y devuelva su promedio.

```javascript
```

## 15. **Filtrar números mayores a un valor**  
Crea una función llamada `filtrarNumerosMayores` que reciba un array de números y un valor, y devuelva un nuevo array con los números mayores que el valor dado.

```javascript
```

## 16. **Verificar si un número está en un array**  
Crea una función llamada `verificarNumeroEnArray` que reciba un número y un array, y devuelva `true` si el número está presente en el array o `false` si no lo está.

```javascript
```

---

# **Manipulación de Cadenas**

## 17. **Revertir una cadena**  
Crea una función llamada `revertirCadena` que reciba una cadena de texto y devuelva la misma cadena con los caracteres en orden inverso.

```javascript
    function revertirCadena(cadenaTexto) {
        let cadenaTextoInversa = ""
        for (let i = cadenaTexto.length; i > 0; i--) {
            cadenaTextoInversa += cadenaTexto[i - 1]
        }
        return cadenaTextoInversa
    }

    //------------------MAIN----------------------
    let cadenaUsuario = prompt("Introduce una cadena a revertir")
    alert(revertirCadena(cadenaUsuario))


```

## 18. **Contar vocales en una cadena**  
Crea una función llamada `contarVocalesEnCadena` que reciba una cadena de texto y devuelva la cantidad total de vocales que contiene.

```javascript

    function contarVocalesEnCadenaForI(cadena) {
        cadena = cadena.toUpperCase()
        let cantidadTotalVocales = 0
        for (let i = 0; i < cadena.length; i++) {
            if (cadena[i] == "A" || cadena[i] == "E" || cadena[i] == "I" || cadena[i] == "O" || cadena[i] == "U") {
                cantidadTotalVocales++
            }
        }
        return cantidadTotalVocales
    }

    function contarVocalesEnCadenaForOf(cadena) {
        cadena = cadena.toUpperCase()
        let cantidadTotalVocales = 0
        for (let letra of cadena) {
            if (letra == "A" || letra == "E" || letra == "I" || letra == "O" || letra == "U") {
                cantidadTotalVocales++
            }
        }
        
        return cantidadTotalVocales
    }

    //--------------MAIN--------------

    let cadenaTexto = "MURCIELAGO GALLEGO".toUpperCase()
    let numeroVocales = contarVocalesEnCadenaForI(cadenaTexto)
    let numeroVocales = contarVocalesEnCadenaForOf(cadenaTexto)
    alert(numeroVocales)
```

## 19. **Capitalizar la primera letra de una palabra**  
Crea una función llamada `capitalizarPrimeraLetra` que reciba una palabra y devuelva la misma palabra con la primera letra en mayúscula. Investiga el uso de `toUpperCase()`.

```javascript
    function capitalizarPrimeraLetra(palabra) {
        let palabraCapitalizada = ""

        for (let i = 0; i < palabra.length; i++) {
            if (i == 0) {
                palabraCapitalizada += palabra[i].toUpperCase()
            }
            else {
                palabraCapitalizada += palabra[i]
            }
        }
        return palabraCapitalizada
    }

    alert(capitalizarPrimeraLetra("jaime"))
```

## 20. **Contar palabras en una cadena**  
Crea una función llamada `contarPalabrasEnCadena` que reciba una cadena y devuelva el número de palabras que contiene, asumiendo que están separadas por espacios. Investiga el uso de `split()`.

```javascript
    function contarPalabrasEnCadena(cadena) {
        let palabrasSeparadas = cadena.split(' ')
        let numeroPalabras = palabrasSeparadas.length
        return numeroPalabras
    }

    function contarPalabrasEnCadenaOptimizado(cadena) {
        //NO HACER OPERACIONES EN UN RETURN
        //Solucion mejor:
        // let numeroPalabras = cadena.split(' ').length
        // return numeroPalabras
        return cadena.split(' ').length
    }


    alert(contarPalabrasEnCadena("ESTO ES UNA CADENA CON PALABRAS GUILLERMO"))
```