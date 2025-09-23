#!/bin/bash
#Script que cuenta el numero de archivos de un directorio


#contamos el numero de lineas que devuelve ls -l y le restamos 1 para no contar la linea total
#la salida la guardamos en la variable resultado
#$(...) para guardar la salida de un comando en una variable
# | para encadenar comandos
resultado= $(ls -l $1|wc -l)

#luego mostramos el resultado por pantalla
#(()) para hacer operaciones con numeros
echo $(($resultado - 1))