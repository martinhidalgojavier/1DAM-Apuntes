## Ejemplo 1
Crea una función que reciba un número y devuelva una lista con los números pares menores que dicho número

*Solución:*
```javascript
    function calcularParesMenores(cotaSuperior) {
        let paresMenores = []

        for (let i = 1; i < cotaSuperior; i++) {
            if (i % 2 == 0) {
                paresMenores.push(i)
            }
        }
        return paresMenores
    }

    //------------------------------------------MAIN------------------------------------
    let cotaSuperiorUsuario = prompt("Introduce el numero del que quieres saber los numeros pares menores que ese numero")
    console.log(calcularParesMenores(cotaSuperiorUsuario))


```


## Ejemplo 2
Crea un programa que reciba un número y devuelva un array con los primos menores que ese número

*Solución:*
```javascript
   

```

