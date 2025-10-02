#!/bin/bash

#genera un Script qie busque los archivos que 
#cumplan con la expresion regular *.txt en la 
#carpeta que pasemos como primer parametro

resultado=$(ls -l $1 | grep .txt)
echo $(($resultado - 1))

