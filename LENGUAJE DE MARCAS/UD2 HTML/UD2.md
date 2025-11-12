## **Unidad Didáctica 2**

### 1. **Introducción a HTML**

#### 1.1. Historia y Versiones de HTML

**HTML (HyperText Markup Language)** es el lenguaje fundamental utilizado para estructurar y presentar contenido en la World Wide Web. Fue creado por **Tim Berners-Lee** en 1989, durante su tiempo en el CERN (Organización Europea para la Investigación Nuclear). Su objetivo inicial era facilitar la creación de un sistema de información interconectada que pudiera ser visualizada por cualquier persona en cualquier dispositivo, utilizando hipervínculos (links) para conectar documentos.

A lo largo de las décadas, HTML ha pasado por varias iteraciones y versiones, cada una de las cuales ha añadido mejoras y capacidades adicionales para abordar las necesidades emergentes de los desarrolladores y usuarios de la web. A continuación, se presenta un resumen de las principales versiones de HTML:

- **HTML 1.0 (1991):** Aunque no fue una versión oficial estandarizada, la primera versión funcional de HTML fue extremadamente básica. Soportaba solo 18 etiquetas, que incluían elementos para encabezados, párrafos, listas y enlaces, pero carecía de muchas de las funcionalidades avanzadas presentes en las versiones modernas.

- **HTML 2.0 (1995):** Fue la primera versión oficial estandarizada por el **IETF (Internet Engineering Task Force)**. HTML 2.0 definió un conjunto básico de elementos, asegurando que todas las implementaciones pudieran mostrar un contenido consistente. Introdujo formularios (`<form>`, `<input>`, `<textarea>`) que permitieron la interacción de los usuarios con las páginas web, además de controles para el envío de datos a través de métodos HTTP como GET y POST.

- **HTML 3.2 (1997):** Estándarizado por el **W3C (World Wide Web Consortium)**, esta versión introdujo soporte para tablas (`<table>`), scripts (`<script>`), e imágenes embebidas. Además, mejoró el control de diseño mediante atributos como `align`, que permitía la alineación de texto y contenido multimedia. Aunque esta versión no incluía todas las mejoras que inicialmente se habían planeado en HTML 3.0 (una versión que nunca se estandarizó), representó un avance significativo.

- **HTML 4.01 (1999):** Esta versión trajo importantes mejoras relacionadas con la separación entre la estructura del documento y su presentación. Promovió el uso de hojas de estilo en cascada (**CSS**) para manejar la apariencia visual de las páginas web, separando así la lógica de presentación de la estructura semántica. Además, se introdujeron importantes mejoras en la accesibilidad, permitiendo que las páginas fueran más comprensibles para dispositivos como lectores de pantalla. HTML 4.01 también fomentó el uso de `id` y `class` para una mejor identificación y personalización de los elementos.

- **XHTML 1.0 (2000):** XHTML, una variante más estricta de HTML basada en XML, fue introducida para mejorar la interoperabilidad con otros sistemas basados en XML. Obligaba a los desarrolladores a seguir reglas más estrictas de sintaxis, lo que garantizaba que los documentos estuvieran bien formados. Sin embargo, aunque el uso de XHTML fue popular durante un tiempo, su adopción se estancó debido a su estricta sintaxis, lo que lo hacía menos flexible para los desarrolladores.

- **HTML5 (2014):** El mayor salto en la evolución de HTML llegó con la versión HTML5, que se estandarizó en 2014. HTML5 introdujo soporte nativo para multimedia, lo que permitió a los desarrolladores integrar video y audio sin necesidad de plugins externos como Flash. También incorporó una gran variedad de **APIs**, como la API de almacenamiento local (`localStorage` y `sessionStorage`), la API de lienzo (`<canvas>`) para gráficos dinámicos, la API de geolocalización, y la API de aplicaciones web fuera de línea. HTML5 se centró en la interoperabilidad entre dispositivos móviles, haciendo que el contenido fuera más accesible en múltiples plataformas.

HTML5 continúa siendo el estándar actual y más utilizado para la creación de páginas web modernas. Su enfoque en la semántica, accesibilidad y la capacidad de manejar multimedia y aplicaciones interactivas ha permitido la creación de experiencias web ricas e interactivas sin la necesidad de tecnologías propietarias o complementarias.

#### 1.2. Estructura básica de un documento HTML

Cada documento HTML se construye utilizando una serie de **etiquetas** o **elementos** que definen su estructura y su presentación. Las etiquetas HTML son las piezas fundamentales que informan al navegador sobre cómo debe interpretar y mostrar el contenido. Todas las etiquetas HTML deben seguir una jerarquía que asegura que el documento esté correctamente estructurado y sea fácilmente entendible tanto por humanos como por máquinas (navegadores web, motores de búsqueda, lectores de pantalla, etc.).

##### **Ejemplo de estructura básica de un documento HTML:**

```html
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Esta es una página web de ejemplo.">
    <title>Mi página web</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <header>
      <h1>Bienvenido a mi página web</h1>
      <nav>
        <ul>
          <li><a href="index.html">Inicio</a></li>
          <li><a href="about.html">Sobre nosotros</a></li>
          <li><a href="contact.html">Contacto</a></li>
        </ul>
      </nav>
    </header>
    <main>
      <section>
        <h2>Sobre nosotros</h2>
        <p>Este es un ejemplo de cómo estructurar una página web utilizando HTML.</p>
      </section>
    </main>
    <footer>
      <p>&copy; 2024 Mi página web. Todos los derechos reservados.</p>
    </footer>
  </body>
</html>
```

##### **Desglose de las principales etiquetas en un documento HTML:**

- **`<!DOCTYPE html>`**: Esta declaración informa al navegador sobre la versión de HTML que se está utilizando. En HTML5, esta declaración es simple y universal. Su objetivo es ayudar a los navegadores a renderizar el contenido correctamente y a evitar el modo de quirks, que podía causar problemas en el diseño y comportamiento de la página.

- **`<html>`**: Es el **elemento raíz** de un documento HTML. Todos los demás elementos de la página se encuentran dentro de este contenedor. A menudo se le asigna el atributo `lang` para especificar el idioma principal del contenido, lo cual es útil para accesibilidad y SEO.

- **`<head>`**: La etiqueta `<head>` contiene **metadatos** sobre el documento, como el conjunto de caracteres, el título que aparecerá en la pestaña del navegador, y los enlaces a hojas de estilo o scripts externos. El contenido del `<head>` no se muestra directamente en la página, pero es fundamental para el funcionamiento correcto del sitio.

  - **`<meta charset="UTF-8">`**: Define la codificación de caracteres como **UTF-8**, que soporta prácticamente todos los caracteres, símbolos y emojis. Es una práctica recomendada incluir siempre esta metaetiqueta para asegurar una correcta representación del texto.

  - **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`**: Esta metaetiqueta es crucial para las páginas **responsivas**, ya que establece cómo debe comportarse la página en dispositivos móviles. El contenido `"width=device-width"` asegura que la página ocupe todo el ancho disponible del dispositivo.

  - **`<link>`**: Utilizado para **enlazar** archivos externos, como hojas de estilo CSS, iconos o fuentes. El atributo `rel="stylesheet"` indica que se trata de una hoja de estilo y `href="styles.css"` señala la ubicación del archivo.

- **`<body>`**: El contenido visible de la página reside dentro del `<body>`. Este elemento contiene todo lo que los usuarios verán e interactuarán, como texto, imágenes, enlaces, formularios, videos y más. Dentro del `<body>` es común estructurar el contenido usando etiquetas semánticas como `<header>`, `<main>`, `<footer>`, etc.

  - **`<header>`**: Contiene elementos que generalmente aparecen al inicio de una página web, como logotipos, títulos y menús de navegación.

  - **`<main>`**: La etiqueta `<main>` envuelve el contenido principal de la página, ayudando a los lectores de pantalla a identificar la parte más relevante del documento.

  - **`<footer>`**: Se utiliza para el pie de página, donde comúnmente se incluyen derechos de autor, enlaces secundarios o información de contacto.

#### 1.3. Importancia de las etiquetas HTML

Las etiquetas HTML son la **base estructural y semántica** de cualquier página web. Cada etiqueta tiene un propósito específico y proporciona tanto a los navegadores como a otros sistemas la información necesaria para interpretar el contenido correctamente. Algunas razones clave que explican la importancia de las etiquetas HTML incluyen:

1. **Estructuración del contenido**: Las etiquetas dividen el contenido en elementos lógicos, facilitando tanto la presentación visual como la organización interna de la información.

2. **Semántica**: HTML5 introdujo varias **etiquetas semánticas** (`<article>`, `<section>`, `<aside>`, `<nav>`, etc.) que ayudan a describir el propósito de las diferentes secciones de una página web. Estas etiquetas no solo mejoran la accesibilidad y SEO, sino que también hacen que el código sea más fácil de mantener y comprender.

3. **SEO (Search Engine Optimization)**: Los motores de búsqueda, como Google, dependen de la semántica de las etiquetas HTML para clasificar el contenido y presentarlo a los usuarios. Por ejemplo, el uso adecuado de las etiquetas `<h1>` a `<h6>` para los encabezados, o de `<meta>` para describir el contenido, puede mejorar la visibilidad de una página en los resultados de búsqueda.

4. **Accesibilidad**: El uso correcto de etiquetas HTML mejora la **accesibilidad** del contenido, permitiendo que las tecnologías de asistencia, como los lectores de pantalla, interpreten correctamente la estructura de la página. Elementos como `<label>`, `<alt>`, y `<nav>` son críticos para la navegación y comprensión por parte de usuarios con discapacidades.

5. **Interactividad**: A través de etiquetas como `<form>`, `<input>`, y `<button>`, HTML permite la creación de interfaces de usuario interactivas que facilitan la recolección de datos, el envío de formularios y la manipulación del DOM en combinación con tecnologías como JavaScript.

---

### 2. **Etiquetas de Estructura del Documento**

HTML establece una estructura jerárquica para los documentos web, y las etiquetas de estructura juegan un papel crucial al definir cómo el contenido será procesado e interpretado tanto por los navegadores como por los motores de búsqueda. A continuación, exploraremos en detalle las etiquetas fundamentales de la estructura de un documento HTML, junto con sus implicaciones técnicas.

#### 2.1. `<!DOCTYPE html>` – Declaración de Tipo de Documento

La etiqueta `<!DOCTYPE>` es una declaración especial que debe ser colocada en la primera línea de todo documento HTML. Su función principal es indicar al navegador qué versión de HTML se está utilizando, lo que le permite renderizar el contenido de manera apropiada. 

En versiones anteriores de HTML, existían múltiples tipos de `DOCTYPE`, cada uno con una sintaxis diferente y un impacto en cómo los navegadores interpretaban la página (modo estricto, transicional, quirks, etc.). Con la llegada de **HTML5**, esta declaración se simplificó, y ahora se escribe de la siguiente forma:

```html
<!DOCTYPE html>
```

- En HTML5, la declaración `<!DOCTYPE>` no es sensible a mayúsculas o minúsculas y siempre se debe escribir de esta forma.
- El propósito del `DOCTYPE` en HTML5 es evitar que el navegador caiga en **modo quirks**, que es un estado en el que el navegador intenta interpretar el documento usando reglas heredadas y no estandarizadas de versiones anteriores de HTML, lo que puede provocar problemas de compatibilidad y errores de presentación.
  
Esta instrucción no es técnicamente un "elemento HTML", sino más bien una **declaración al navegador** sobre el tipo de documento que se está presentando.

#### 2.2. `<html>` – Elemento Raíz de Todo Documento HTML

El elemento `<html>` es el **contenedor principal** de todo el contenido HTML. Este elemento es esencial, ya que encapsula todos los demás elementos del documento y define el **contexto del documento**. 

El elemento `<html>` también puede incluir varios atributos globales, siendo uno de los más importantes el atributo `lang`, que especifica el idioma principal del contenido del documento. Esto es esencial tanto para la accesibilidad (ayudando a los lectores de pantalla a identificar el idioma) como para el SEO (motores de búsqueda como Google utilizan esta información para mejorar los resultados en búsquedas multilingües).

**Sintaxis básica:**

```html
<html lang="es">
  <!-- Todo el contenido HTML va aquí -->
</html>
```

- **`lang="es"`**: En este ejemplo, el atributo `lang` indica que el contenido está en español. Esto es crucial para la accesibilidad web y las buenas prácticas SEO.
- El elemento `<html>` contiene dos grandes secciones: el `<head>`, donde se encuentran los **metadatos** del documento, y el `<body>`, donde reside el **contenido visible** que el usuario interactuará.

#### 2.3. `<head>` – Metadatos del Documento

La etiqueta `<head>` contiene información sobre el documento que no se muestra directamente en la página web, pero es utilizada por los navegadores y motores de búsqueda para procesar e interpretar el contenido adecuadamente. Los metadatos son fundamentales para asegurar que el documento se renderice de manera correcta en una amplia gama de dispositivos y que sea fácilmente indexado por motores de búsqueda.

##### Componentes principales del `<head>`:

- **`<meta charset="UTF-8">`**: Define la codificación de caracteres utilizada en el documento. **UTF-8** es la codificación más común, ya que soporta una amplia gama de caracteres (incluyendo todos los caracteres latinos, símbolos, emojis, etc.). Sin esta declaración, el navegador podría interpretar incorrectamente el texto, lo que llevaría a caracteres mal formados en la pantalla.

- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`**: Esta metaetiqueta es crucial para páginas **responsivas**. Indica al navegador que el ancho de la página debe ajustarse al ancho del dispositivo (móvil, tableta, escritorio) y escala el contenido adecuadamente. Sin esta etiqueta, las páginas web no suelen adaptarse bien a dispositivos móviles, lo que provoca una mala experiencia de usuario.

- **`<title>`**: El elemento `<title>` define el título que aparecerá en la pestaña del navegador y en los resultados de búsqueda. Es una parte esencial del SEO, ya que los motores de búsqueda utilizan el título como el principal descriptor del contenido de la página.

**Ejemplo del contenido dentro de `<head>`:**

```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mi página web</title>
</head>
```

#### 2.4. `<title>` – Título de la Página Web

El elemento `<title>` define el título de la página que se muestra en la pestaña del navegador y en los resultados de los motores de búsqueda. Aunque es parte del `<head>`, merece especial mención porque es fundamental tanto para la experiencia del usuario como para el SEO.

- El contenido del elemento `<title>` no se muestra en la página web misma, sino en la **pestaña del navegador** y como el **título principal** en los resultados de búsqueda de Google u otros motores de búsqueda.
- Un buen título debe ser **descriptivo**, **conciso** y contener **palabras clave** relevantes para el contenido de la página, ya que los motores de búsqueda lo utilizan como un factor importante para clasificar y mostrar la página.

**Ejemplo de un título efectivo:**

```html
<title>Bienvenido a Mi Página Web | Servicios y Productos</title>
```

Este ejemplo incluye palabras clave descriptivas que pueden mejorar la clasificación de la página en resultados de búsqueda.

#### 2.5. `<meta>` – Declaración de Metadatos

Las etiquetas `<meta>` proporcionan información adicional sobre el contenido de la página. Los **metadatos** son utilizados por navegadores, motores de búsqueda y redes sociales para interpretar y presentar adecuadamente el contenido del documento. Existen varios tipos de etiquetas `<meta>`, cada una con una función específica:

- **`<meta name="description" content="Descripción del contenido">`**: Proporciona una descripción del contenido de la página. Esta descripción puede aparecer en los resultados de búsqueda debajo del título y es clave para aumentar la tasa de clics (CTR). Debe ser informativa, precisa y contener las palabras clave más relevantes.

- **`<meta name="author" content="Nombre del autor">`**: Indica el autor de la página o documento, útil en proyectos colaborativos o cuando se desea atribuir crédito a los creadores de contenido.

- **`<meta http-equiv="X-UA-Compatible" content="IE=edge">`**: Instruye a los navegadores, especialmente versiones antiguas de Internet Explorer, para que rendericen el contenido usando el modo más compatible y moderno disponible.

- **`<meta name="keywords" content="palabra clave1, palabra clave2, palabra clave3">`**: Aunque ya no es tan utilizada para SEO en motores de búsqueda modernos (como Google), esta etiqueta permitía listar palabras clave relevantes para la página. Sin embargo, hoy en día se recomienda enfocarse en contenido relevante y de calidad más que en el uso de esta metaetiqueta.

**Ejemplo de uso de múltiples metaetiquetas:**

```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Una breve descripción de mi página web, enfocada en servicios y productos de calidad.">
  <meta name="author" content="Juan Pérez">
  <meta name="keywords" content="servicios, productos, calidad, web">
</head>
```

---

### 3. **El Cuerpo del Documento HTML**

El cuerpo de un documento HTML es el componente esencial donde se define todo el contenido visible para el usuario. Este contenido incluye texto, imágenes, videos, enlaces, formularios y otros elementos interactivos que forman la estructura visual y funcional de la página web. Los elementos dentro de `<body>` son interpretados y renderizados por el navegador web, lo que proporciona la experiencia interactiva que los usuarios ven y con la que interactúan.

#### 3.1. `<body>` – Contenedor del Contenido Visible

El elemento `<body>` es el contenedor donde reside todo el contenido visible e interactivo de la página web. Al igual que el elemento `<html>` es el contenedor raíz de todo el documento, `<body>` es el contenedor raíz de todo lo que se muestra en la interfaz del usuario. Todo el contenido, desde párrafos, encabezados, imágenes, videos, formularios, scripts hasta elementos multimedia, debe estar encapsulado dentro del elemento `<body>`.

**Estructura de `<body>`:**

```html
<body>
  <h1>Bienvenido a mi página</h1>
  <p>Este es el contenido de mi página web.</p>
</body>
```

En este ejemplo básico:
- El **elemento `<h1>`** representa un encabezado de nivel 1, el más importante en la jerarquía de títulos.
- El **elemento `<p>`** representa un párrafo de texto.

##### Consideraciones Técnicas para el Uso de `<body>`:
- **Elementos Semánticos**: Con la introducción de HTML5, el uso de **elementos semánticos** dentro del cuerpo, como `<header>`, `<nav>`, `<article>`, `<section>`, y `<footer>`, es altamente recomendable para proporcionar estructura y significado al contenido. Estos elementos ayudan a definir mejor la jerarquía del contenido y son importantes para la accesibilidad y SEO.
  
```html
<body>
  <header>
    <h1>Bienvenido a Mi Página</h1>
  </header>
  <nav>
    <ul>
      <li><a href="index.html">Inicio</a></li>
      <li><a href="about.html">Sobre Nosotros</a></li>
      <li><a href="contact.html">Contacto</a></li>
    </ul>
  </nav>
  <main>
    <section>
      <h2>Sobre Nosotros</h2>
      <p>Esta es una sección de contenido dentro del cuerpo del documento.</p>
    </section>
  </main>
  <footer>
    <p>Derechos reservados &copy; 2024</p>
  </footer>
</body>
```

Este ejemplo muestra una estructura semántica dentro del `<body>`, con un encabezado (`<header>`), navegación (`<nav>`), contenido principal (`<main>`) y pie de página (`<footer>`).

---

### 4. **Etiquetas de Formato de Texto**

El formato del texto es uno de los elementos más esenciales en HTML, ya que define cómo el contenido textual se presenta a los usuarios. HTML ofrece una amplia variedad de etiquetas que permiten estructurar y dar estilo al texto, desde títulos hasta párrafos, enlaces, citas y más.

#### 4.1. Encabezados: `<h1>` a `<h6>`

Los encabezados son etiquetas HTML utilizadas para definir títulos o subtítulos. La jerarquía de encabezados va desde `<h1>`, que es el nivel más alto y debe ser único en la página, hasta `<h6>`, que representa el nivel más bajo de importancia. El uso correcto de encabezados mejora tanto la accesibilidad como el SEO, ya que facilita la navegación en lectores de pantalla y proporciona una estructura clara del contenido.

**Ejemplo de uso de encabezados:**

```html
<h1>Título principal</h1>
<h2>Subtítulo</h2>
<h3>Sección</h3>
```

##### Consideraciones Técnicas:
- **SEO**: El uso adecuado de los encabezados es crucial para el SEO. Los motores de búsqueda utilizan los encabezados para entender la jerarquía y relevancia del contenido. El uso de más de un `<h1>` en una página puede confundir tanto a los motores de búsqueda como a los usuarios.
- **Accesibilidad**: Los lectores de pantalla dependen de los encabezados para ofrecer una estructura lógica del contenido. El uso correcto de encabezados ayuda a los usuarios con discapacidades visuales a navegar eficientemente por el documento.

#### 4.2. Párrafos: `<p>`

La etiqueta `<p>` se utiliza para definir párrafos de texto. Es la forma más común de organizar texto en bloques, proporcionando una separación visual y lógica entre diferentes secciones de contenido.

```html
<p>Este es un párrafo de ejemplo.</p>
```

#### 4.3. Enlaces: `<a>`

La etiqueta `<a>` se utiliza para crear enlaces a otras páginas web o recursos. El atributo `href` define la URL de destino. Los enlaces son fundamentales en la creación de la web, ya que permiten la interconexión de documentos y recursos.

**Ejemplo de enlace básico:**

```html
<a href="https://www.ejemplo.com">Visita mi sitio</a>
```

##### Consideraciones Técnicas:
- **Accesibilidad**: Es recomendable utilizar textos de enlace descriptivos que ofrezcan contexto sobre el destino del enlace, en lugar de utilizar frases genéricas como "haz clic aquí".
- **Navegación**: El uso del atributo `target="_blank"` abre el enlace en una nueva pestaña, pero debe usarse con cuidado, ya que puede afectar negativamente la experiencia del usuario si no se usa correctamente.

#### 4.4. Texto en Negrita: `<b>`, `<strong>`

La etiqueta `<b>` se usa para poner texto en negrita, pero sin añadir ninguna semántica al texto. En cambio, la etiqueta `<strong>` también pone el texto en negrita, pero además indica que el contenido tiene una importancia especial.

```html
<p><b>Texto en negrita</b></p>
<p><strong>Texto importante</strong></p>
```

#### 4.5. Texto en Cursiva: `<i>`, `<em>`

La etiqueta `<i>` cambia el texto a cursiva, pero sin ninguna semántica adicional. La etiqueta `<em>`

 también cambia el texto a cursiva, pero indica que el contenido es enfatizado o tiene un significado especial en el contexto.

```html
<p><i>Texto en cursiva</i></p>
<p><em>Texto con énfasis</em></p>
```

#### 4.6. Citas en Bloque: `<blockquote>`

La etiqueta `<blockquote>` se utiliza para citas largas o bloques de texto citados de otra fuente. Este elemento generalmente agrega una sangría al contenido citado para diferenciarlo visualmente del resto del texto.

```html
<blockquote>
  "Este es un ejemplo de una cita larga."
</blockquote>
```

#### 4.7. Saltos de Línea: `<br>`

La etiqueta `<br>` se usa para insertar un salto de línea dentro de un bloque de texto. A diferencia de `<p>`, no crea un nuevo párrafo, sino que simplemente mueve el contenido siguiente a una nueva línea.

```html
<p>Primera línea<br>Segunda línea</p>
```

#### 4.8. Líneas Horizontales: `<hr>`

La etiqueta `<hr>` crea una línea horizontal que puede ser utilizada para separar visualmente secciones de contenido.

```html
<hr>
```
---

### 5. **Etiquetas de Enlaces y Multimedia**

HTML ofrece una serie de etiquetas específicamente diseñadas para gestionar recursos multimedia y enlaces, que son componentes esenciales de la web moderna. Las imágenes, videos, y otros medios enriquecen el contenido visual y mejoran la experiencia del usuario, mientras que los enlaces permiten conectar documentos y recursos, facilitando la navegación por la web. Para garantizar que el contenido multimedia sea accesible, fluido y optimizado para una amplia variedad de dispositivos, es fundamental entender el uso adecuado de estas etiquetas.

#### 5.1. `<img>` – Inserción de Imágenes

La etiqueta `<img>` se utiliza para incrustar imágenes en un documento HTML. A diferencia de otros elementos HTML, `<img>` es un **elemento vacío**, lo que significa que no tiene una etiqueta de cierre. En su lugar, sus atributos controlan el comportamiento y la visualización de la imagen.

**Atributos clave:**
- **`src`**: El atributo `src` (source) define la ruta de la imagen que se va a mostrar. Esta ruta puede ser **relativa** (especificando una imagen almacenada en el mismo servidor) o **absoluta** (especificando una imagen alojada en un servidor externo).
- **`alt`**: El atributo `alt` (texto alternativo) proporciona una descripción de la imagen en caso de que no se pueda cargar, o si el usuario está utilizando tecnologías de asistencia, como lectores de pantalla. Este texto es crucial para la accesibilidad y también es considerado por los motores de búsqueda para SEO.
- **`width` y `height`**: Estos atributos especifican el ancho y alto de la imagen, respectivamente. Si no se definen, el navegador muestra la imagen con sus dimensiones originales.

**Sintaxis básica de una imagen:**

```html
<img src="imagen.jpg" alt="Descripción de la imagen" width="600" height="400">
```

**Descripción técnica:**
- **`src="imagen.jpg"`**: Define la ubicación de la imagen a cargar. Si la imagen está alojada en el mismo servidor, se puede utilizar una ruta relativa; de lo contrario, se debe especificar la URL completa.
- **`alt="Descripción de la imagen"`**: Proporciona una breve descripción de la imagen. Esto es especialmente importante para la accesibilidad, ya que ayuda a los usuarios con discapacidades visuales a entender el contenido visual a través de lectores de pantalla.
- **`width="600"` y `height="400"`**: Establecen las dimensiones de la imagen. Es recomendable especificar estos valores para mejorar el rendimiento de la página, evitando que el navegador tenga que calcular el tamaño de la imagen durante el proceso de carga.

##### Consideraciones de Rendimiento y SEO:
- **Tamaño y resolución de imágenes**: Es esencial optimizar las imágenes para la web utilizando formatos eficientes (como JPEG, PNG o WebP) y comprimirlas para reducir el tiempo de carga sin sacrificar la calidad visual.
- **Responsive images (imágenes adaptativas)**: Para mejorar la experiencia del usuario en dispositivos de diferentes tamaños de pantalla, se puede utilizar el atributo `srcset` y el elemento `<picture>`, que permiten cargar diferentes versiones de la misma imagen según la resolución del dispositivo.

```html
<img src="imagen-pequena.jpg" srcset="imagen-grande.jpg 2x" alt="Descripción de la imagen">
```

En este ejemplo, la imagen de mayor resolución (imagen-grande.jpg) se cargará automáticamente en pantallas de alta densidad de píxeles (como dispositivos móviles y tabletas).

#### 5.2. `<figure>` y `<figcaption>` – Contenedor Semántico para Imágenes y Otros Medios

HTML5 introdujo la etiqueta `<figure>`, que se utiliza para encapsular contenido multimedia, como imágenes, gráficos, o tablas, junto con una leyenda descriptiva opcional a través de la etiqueta `<figcaption>`. Esta combinación mejora la **semántica** y la accesibilidad de las imágenes y otros medios, ya que permite asociar directamente una leyenda con el contenido visual.

**Sintaxis de `<figure>` con `<figcaption>`:**

```html
<figure>
  <img src="imagen.jpg" alt="Descripción de la imagen">
  <figcaption>Esta es la leyenda que describe la imagen.</figcaption>
</figure>
```

**Descripción técnica:**
- **`<figure>`**: Sirve como un contenedor semántico que encapsula contenido visual o multimedia y su leyenda. Al usar `<figure>`, estamos proporcionando un bloque independiente de contenido multimedia que puede ser movido o reposicionado en el documento sin perder su contexto.
- **`<figcaption>`**: Añade una leyenda descriptiva que se asocia directamente con el contenido del `<figure>`. Este texto es visible para los usuarios y ayuda a describir o dar contexto a la imagen o contenido multimedia.

**Ventajas del uso de `<figure>` y `<figcaption>`:**
- Mejora la **accesibilidad** al proporcionar un contexto visual claro.
- Refuerza la **semántica** del documento, lo que es útil para los motores de búsqueda y la estructura del contenido.
- Facilita la separación lógica del contenido visual del resto del cuerpo del texto.

#### 5.3. `<a>` – Enlaces

El elemento `<a>` es uno de los elementos más fundamentales en HTML y se utiliza para crear enlaces a otros recursos, como páginas web, documentos, imágenes, correos electrónicos, o archivos descargables. Los enlaces son esenciales para la navegación en la web, permitiendo a los usuarios acceder a otros documentos con solo hacer clic.

**Atributos clave:**
- **`href`**: El atributo más importante del `<a>`, `href` (hypertext reference), define la URL a la que apunta el enlace. Puede ser un enlace absoluto (dirigiendo a otra página web) o relativo (a un archivo o página dentro del mismo sitio).
- **`target`**: Este atributo especifica dónde se debe abrir el enlace. El valor más común es `"_blank"`, que abre el enlace en una nueva pestaña o ventana del navegador.

**Sintaxis básica de un enlace:**

```html
<a href="https://www.ejemplo.com" target="_blank">Visita mi sitio web</a>
```

- **`href="https://www.ejemplo.com"`**: Define el destino del enlace. En este caso, el enlace lleva al usuario a una página externa.
- **`target="_blank"`**: Abre el enlace en una nueva pestaña. Esto es útil cuando se enlaza a recursos externos para evitar que los usuarios abandonen la página actual.

##### Variaciones y Consideraciones Técnicas de los Enlaces:
- **Enlaces de anclaje interno**: Los enlaces también pueden apuntar a diferentes secciones dentro de la misma página, utilizando el identificador de elementos. Este tipo de enlaces mejora la navegación dentro de documentos largos.

```html
<a href="#seccion1">Ir a la Sección 1</a>

<!-- En otro lugar del documento -->
<h2 id="seccion1">Sección 1</h2>
```

- **Enlaces a correos electrónicos**: Usar el esquema `mailto:` dentro de un enlace permite a los usuarios enviar correos electrónicos directamente desde la página.

```html
<a href="mailto:info@ejemplo.com">Contacta con nosotros</a>
```

- **Enlaces descargables**: Se puede utilizar el atributo `download` en la etiqueta `<a>` para permitir que el recurso enlazado se descargue automáticamente en lugar de abrirse en el navegador.

```html
<a href="documento.pdf" download>Descargar documento PDF</a>
```

[Enlace para generar fotos](https://placehold.co/1200x600/EEE/00000?text=TEXTO)