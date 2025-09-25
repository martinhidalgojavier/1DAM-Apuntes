#!/bin/bash
#almacena dentro del archivo log.txt cuantos archivos 
#hay en alumnoT (recursivamente) que contengan la cadena de texto "stem"
#debemos pasar la carpeta como parametro



ls -R /home/alumnoT | grep stem | wc -l >> /home/alumnoT/Escritorio/pruebasistemas/log.txt 