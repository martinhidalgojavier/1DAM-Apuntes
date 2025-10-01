# WIKI GIT Y GITHUB
**Javier Martin Hidalgo**


## 1. Introducción Avanzada a Git y GitHub

### 1.1 ¿Qué es Git?

Git es un **sistema de control de versiones** distribuido que permite guardar, sincronizar y volver a cambios del código, dando autonomía y colaboración simultánea entre desarrolladores.

#### Caracteristicas clave de Git:

· Repositorio completo en cada equipo

· Registro detallado de cambios

· Trabajo en ramas con fusiones controladas.

### 1.2 Historia y Evolución de Git

Git fue creado en 2005 por Linus Torvalds tras problemas con BitKeeper. Se diseñó para proyectos grandes, rápido y escalable. Desde 2008, con GitHub, se volvió estándar global

## 2. Instalación rápida de Git en Linux



```bash
# Actualiza lista de paquetes
sudo apt update

# Instala Git
sudo apt install git

# Verifica la instalación
git --version         
```



### 2.1 Configuración inicial

```bash
# Tu nombre en los commits
git config --global user.name "Tu Nombre"  

# Tu correo en los commits
git config --global user.email "tu@email.com"   

# Ver tu configuración
git config --list                                
```

---

### 2.3 Comandos básicos y útiles

* `git init` → Crea un nuevo repositorio en la carpeta actual.
* `git clone URL` → Descarga un repositorio existente.
* `git status` → Muestra archivos modificados/no guardados.
* `git add archivo` → Añade un archivo al área de preparación.
* `git add .` → Añade todos los archivos.
* `git commit -m "mensaje"` → Guarda los cambios con un mensaje.
* `git log` → Muestra historial de commits.
* `git branch` → Lista ramas existentes.
* `git checkout rama` → Cambia a otra rama.
* `git merge rama` → Fusiona otra rama con la actual.
* `git pull` → Descarga y actualiza desde remoto.
* `git push` → Sube tus cambios al remoto.

## 3. Fundamentos Avanzados (Punto 3)

## 3.1 Repositorios

* **Local:** En tu máquina → cambios y commits sin internet.
* **Remoto:** GitHub/GitLab/Bitbucket → colaboración y sincronización.
* **Flujo típico:** Trabajas en local → `git push` al remoto → otros pueden revisar/fusionar usando → `git pull`

---

## 3.2 Crear Repositorio Local

```bash
# Ir a la carpeta del proyecto
cd /ruta/a/mi_proyecto

# Inicializa repositorio Git
git init                
```

* Se crea `.git` con historial y configuraciones del proyecto.

---

## 3.3 Ciclo de Vida de Archivos

| Estado    | Qué significa                          | Comando típico            |
| --------- | -------------------------------------- | ------------------------- |
| Untracked | Git no sigue el archivo                | `git add archivo`         |
| Staged    | Listo para commit                      | `git commit -m "mensaje"` |
| Modified  | Cambiado tras último commit, no staged | `git add`                 |
| Committed | Guardado en historial                  | -                         |

**Ejemplo:**

```bash
git add main.py
git commit -m "Añadir main.py"
```

---

## 3.4 Comandos Básicos

| Comando                   | Función                                                                      |
| ------------------------- | ---------------------------------------------------------------------------- |
| `git init`                | Crear repositorio en la carpeta actual                                       |
| `git add archivo`         | Agregar archivo al área de preparación                                       |
| `git add .`               | Agregar todos los archivos                                                   |
| `git commit -m "mensaje"` | Confirmar cambios en el historial                                            |
| `git status`              | Ver estado de archivos (modificados, staged, no rastreados)                  |
| `git log`                 | Ver historial de commits; usar `--oneline` o `--graph` para vistas resumidas |

---

## 4. Crear un Repositorio en GitHub

Pasos rápidos:

1. Inicia sesión en [GitHub](https://github.com).
2. Haz clic en **New Repository**.
3. Asigna un nombre, público/privado, y opcionalmente: README, .gitignore, licencia.
4. Copia la URL del repositorio remoto (ej: `https://github.com/usuario/repo.git`).

---

## 4.1 Conectar Repositorio Local con GitHub

```bash
git remote add origin https://github.com/usuario/repo.git
```

* `origin` → nombre por defecto del remoto.
* URL → reemplaza con tu usuario y nombre del repo.

---

## 4.2 Subir cambios al remoto

```bash
git push origin master
```

* `origin` → repositorio remoto.
* `master` → rama principal (a veces `main`).
* Sincroniza tus commits locales con GitHub.

---

## 4.3 Clonar un repositorio

```bash
git clone https://github.com/usuario/repo.git
```

* Descarga todo el repo remoto y su historial a tu máquina local.
* Se crea una carpeta local con el mismo nombre que el repo.

---

## 4.4 Descargar actualizaciones del remoto

```bash
git pull origin master
```

* Descarga nuevos commits del remoto y los fusiona con tu rama actual.
* Mantiene tu repositorio local actualizado con los cambios de otros colaboradores.

