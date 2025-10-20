### **UD 1: Conceptos Básicos de Comandos**

**Comando:** Una orden que le das al sistema.

  - **Ejemplo:** ls para listar archivos.

**Estructura de un comando:** comando [opciones] [argumentos]

  - **Comando:** La acción a realizar (ls, cp).
  - **Opciones:** Modifican cómo funciona el comando (suelen empezar con - o --).
    - **Ejemplo:** ls -l (lista en formato largo).
  - **Argumentos:** Sobre qué actúa el comando (un archivo, una carpeta).
    - **Ejemplo:** ls /home/usuario (lista el contenido de esa carpeta).

**Tipos de Comandos (según su función):**
  - **Navegación:** Para moverte por las carpetas (cd, pwd).
  - **Manipulación:** Para gestionar archivos (cp, mv, rm).
  - **Administración:** Para gestionar procesos y usuarios (ps, kill, chmod).
  - **Red:** Para configurar la red (ping, ifconfig).

---

### **Navegación por el Sistema de Archivos**

**Estructura de árbol:** Todo empieza desde la raíz (/).

  - /home: Carpetas personales de los usuarios.
  - /bin: Programas esenciales.
  - /etc: Archivos de configuración.

**Ruta Absoluta vs. Relativa:**

  - **Absoluta:** Empieza desde la raíz (/). Es la dirección completa.
    - **Ejemplo:** /home/usuario/documentos
  - **Relativa:** Empieza desde donde estás ahora. No usa / al principio.
    - **Ejemplo:** ../documentos (sube un nivel y entra en documentos).

**Directorios Especiales:**

  - . : El directorio actual.
  - .. : El directorio padre (el de arriba).

**Metacaracteres (comodines para buscar archivos):**

  - * (asterisco): Representa cero o más caracteres.
    - **Frase:** "Todo lo que termine en .txt".
    - **Ejemplo:** ls *.txt
  - ? (interrogación): Representa un solo carácter.
    - **Frase:** "Archivos con un solo carácter extra".
    - **Ejemplo:** ls archivo?.txt (encontraría archivo1.txt pero no archivo10.txt).
  - [_ _] (corchetes): Representa un rango de caracteres.
    - **Frase:** "Archivos que van del 1 al 3".
    - **Ejemplo:** ls archivo[1-3].txt
  - { } (llaves): Crea una lista de opciones.
    - **Frase:** "Exactamente estos archivos".
    - **Ejemplo:** ls archivo{1,A,B}.txt (encontraría archivo1.txt, archivoA.txt, archivoB.txt).

**Comandos de Navegación Esenciales:**
  - **pwd** (print working directory): Te dice en qué carpeta estás.
    - **Frase:** "¿Dónde estoy?".
  - **cd** (change directory): Te permite cambiar de carpeta.
    - **Frase:** "Llévame a...".
    - **Ejemplos:**
      - cd /home/usuario (ir a una ruta específica).
      - cd .. (subir un nivel).
      - cd ~ (ir a tu carpeta personal).
      - cd - (volver a la carpeta anterior).
  - **ls** (list): Lista el contenido de una carpeta.
    - **Frase:** "¿Qué hay aquí?".
    - **Opciones clave:**
      - ls -l: Formato largo (con permisos, tamaño, fecha).
      - ls -a: Muestra archivos ocultos (los que empiezan con .).
      - ls -lh: Tamaños legibles (KB, MB).
  - **tree**: Muestra la estructura de carpetas en formato de árbol (puede que necesites instalarlo).

---

### **Manipulación de Archivos y Directorios**

**cp** (copy): Copia archivos o directorios.

  - **Frase:** "Haz una copia de esto aquí".
  - **Ejemplo:** cp archivo.txt /home/copias/
  - **Opción clave:** -r para copiar directorios enteros (cp -r mi_carpeta /copias/).

**mv** (move): Mueve o renombra archivos y directorios.

  - **Frase:** "Mueve esto allá" o "Cámbiale el nombre".
  - **Ejemplos:**
    - mv archivo.txt /home/nuevo_lugar/ (mover).
    - mv viejo_nombre.txt nuevo_nombre.txt (renombrar).
    - mv log*.txt /home/nuevolugar/ (archivos que empiezan por log y acaban por txt.)

**rm** (remove): Elimina archivos o directorios. **¡Cuidado, no hay papelera!**

  - **Frase:** "Borra esto para siempre".
  - **Ejemplo:** rm archivo.txt
  - **Opciones clave:**
    - -r: Borra directorios y todo su contenido (rm -r carpeta_a_borrar).
    - -f: Forzar borrado sin preguntar.

**mkdir** (make directory): Crea una nueva carpeta.

  - **Frase:** "Crea una carpeta".
  - **Ejemplo:** mkdir mis_fotos
  - **Opción clave:** -p para crear carpetas anidadas de golpe (mkdir -p A/B/C).

**rmdir** (remove directory): Elimina una carpeta **vacía**.

  - **Frase:** "Borra esta carpeta si no tiene nada".
  - **Ejemplo:** rmdir carpeta_vacia
  - NO TIENE BANDERAS

**touch**: Crea un archivo vacío o actualiza su fecha de modificación.
  - **Frase:** "Crea un fichero vacío".
  - **Ejemplo:** touch nuevo_archivo.txt

---

### **Visualización y Edición de Archivos**

**cat** (concatenate): Muestra todo el contenido de un archivo en la pantalla.

  - **Frase:** "Muéstrame todo el archivo".
  - **Ejemplo:** cat archivo.txt
  - **Ejemplo** cat archivo1.txt archivo2.txt (Imprime dos archivos por pantalla)

**head**: Muestra las primeras líneas de un archivo (10 por defecto).

  - **Frase:** "Enséñame el principio".
  - **Ejemplo:** head -n 5 archivo.log (muestra las primeras 5 líneas).

**tail**: Muestra las últimas líneas de un archivo (10 por defecto).

  - **Frase:** "Enséñame el final".
  - **Ejemplo:** tail -n 20 archivo.log (muestra las últimas 20).
  - **Opción clave:** -f para ver un archivo en tiempo real (ideal para logs). tail -f /var/log/syslog

**nano**: Un editor de texto sencillo para la terminal.
  - **Frase:** "Quiero editar este archivo".
  - **Ejemplo:** nano archivo.txt
  - **Atajos clave:**
    - Ctrl + O: Guardar.
    - Ctrl + X: Salir.
    - Ctrl + W: Buscar.

---

### **Búsqueda de Archivos y Contenido**

**find**: Busca archivos y directorios según criterios (nombre, tamaño, fecha).

  - **Frase:** "Encuentra archivos que cumplan esto".
  - **Ejemplos:**
    - find /home -name "*.txt" (busca todos los .txt en /home).
    - find /home -iname "*.txt"(busca todos los .txt en /home sin importar mayusculo o minuscula.)
    - find . -type d (busca solo directorios desde la ubicación actual).
    - find / -size +100M (busca archivos de más de 100MB en todo el sistema).
    - find / -mtime -días (Busca archivos que se hayan modificado en -dias)

**grep** (global regular expression print): Busca texto dentro de los archivos.
  - **Frase:** "Busca esta palabra dentro de los archivos".
  - **Ejemplos:**
    - grep "error" archivo.log (busca la palabra "error" en archivo.log).
    - grep -r "contraseña" /etc (busca recursivamente la palabra "contraseña" en todos los archivos de /etc).
    - grep -i "hola" (busca "hola" sin importar mayúsculas o minúsculas).
    - grep -l "texto" (muestra solo los nombres de los archivos que contienen "texto").
    - grep -v "texto" (Muestra las lineas que no coinciden con el patron)

---

### **Scripts y Recordatorios Clave**

**¡RECUERDA DAR PERMISOS!**

  - Antes de ejecutar un script, dale permisos de ejecución.
  - **Comando:** chmod 777 mi_script.sh o chmod +x mi_script.sh

**Scripts de ejemplo (simplificados):**

  - **Contar archivos/carpetas en una ruta:**
    - ls -l $1 | wc -l (lista en formato largo, y wc -l cuenta las líneas). Se le resta 1 para no contar la línea del total.
  - **Buscar documentos .txt:**
    - ls -l $1 | grep .txt (lista y filtra las líneas que contienen ".txt").

**Ejemplos de tareas comunes:**
  - **Contar archivos con una extensión (ej: .sh) en la carpeta actual:**
    - ls *.sh | wc -l
  - **Guardar en log.txt cuántos archivos contienen "stem" en la carpeta alumnoT:**
    - find ./alumnoT -type f -exec grep -l "stem" {} + | wc -l > log.txt
    - **Explicación simple:** find busca, grep filtra los que tienen "stem", wc -l cuenta y > guarda el resultado en log.txt.
