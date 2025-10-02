#!/bin/bash
## Crea un script que cuente las carpetas o archivos 
## de cualquier directorio



let resultado=$(ls -l $1 | wc -l)
echo $(($resultado -1))
