#ejercicio 1
# el pwd de donde esta el ejercicio seria este: /home/alumnoT/Escritorio/pruebasistemas/proyecto



#se crea el directorio completo con este comando
mkdir -p proyecto/{docs,src/modulos,config,logs/backup,test/resultados}

#con este comando creamos todo el "interior del directorio, en base a lo indicado en el ejercicio"
touch proyecto/{docs/{manual.txt,guia.txt,referencias.txt},src/{script1.sh,script2.sh,modulos/modulo1.py},config/{app.cfg,db.cfg},logs/{acces.log,error.log,backup/
backup1.log},test/{test1.txt,test2.txt,resultados/resultados1.txt}}


#esta seria la forma de hacerlo "paso a paso"
touch /home/alumnoT/Escritorio/pruebasistemas/proyecto/docs {manual.txt,guia.txt,referencias.txt};
touch /home/alumnoT/Escritorio/pruebasistemas/proyecto/src/{script1.sh,script2.sh}; 
touch touch /home/alumnoT/Escritorio/pruebasistemas/proyecto/src/modulos/modulo1.py;
touch touch /home/alumnoT/Escritorio/pruebasistemas/proyecto/config/{app.cfg,db.cfg};
touch touch /home/alumnoT/Escritorio/pruebasistemas/proyecto/logs/{acecess.log,error.log};
touch touch /home/alumnoT/Escritorio/pruebasistemas/proyecto/logs/backup/backup1.log;
touch touch /home/alumnoT/Escritorio/pruebasistemas/proyecto/test/{test1.txt,test2.txt};
touch touch /home/alumnoT/Escritorio/pruebasistemas/proyecto/test/resultados/resultados1.txt;

# una vez hecho, tendria esta estructura si lo vemos de forma visual

#proyecto/
#├── docs/
#│   ├── manual.txt
#│   ├── guia.txt
#│   └── referencias.txt
#├── src/
#│   ├── script1.sh
#│   ├── script2.sh
#│   └── modulos/
#│       └── modulo1.py
#├── config/
#│   ├── app.cfg
#│   └── db.cfg
#├── logs/
#│   ├── access.log
#│   ├── error.log
#│   └── backup/
#│       └── backup1.log
#└── test/
#    ├── test1.txt
#    ├── test2.txt
#    └── resultados/
#        └── resultados1.txt



#Ejercicio 2
#Copia los archivos manual.txt y guia.txt desde el subdirectorio docs a un nuevo subdirectorio llamado backup_docs dentro de proyecto.
#Copia de forma recursiva el directorio config completo junto con su contenido a un subdirectorio llamado config_backup dentro de proyecto.
#Responde con los comandos utilizados y verifica la estructura resultante con ls o tree.

##1
 
 mkdir backup_docs

 cp docs/{manual.txt, guia.txt} backup_docs

 ##2 
 mkdir config_backup
 cp -r  config/* config_backup

#Ejercicio 3
#Mueve el archivo script1.sh desde el subdirectorio src a test/resultados.
#Renombra script2.sh a script_final.sh dentro del subdirectorio src.
#Mueve el directorio backup completo desde logs a test.
#Responde con los comandos y verifica la estructura final con ls o tree.

mv src/script1.sh test/resultados/
#mv rutaArchivoAMover rutaDondeSeMueve

#Vamos al punto donde esta el archivo a renombrar
mv script2.sh script_final.txt
#mv nombreAntiguoArchivo nuevoNombreArchivo


