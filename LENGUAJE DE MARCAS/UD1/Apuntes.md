# XML

## Sintaxis básica de xml

## Estructura inicial

    <?xml version="1.0" encoding="UTF-8"?>
    <raiz>
        <elemento atributo="valor">Contenido del elemento</elemento>
        <elementoVacio atributo="valor"/>
    </raiz>

## Reglas de sintaxis de XML:

<raiz>
  
  <hijo1>
  </hijo1>
  
  <hijo2>
</hijo2>

## EJEMPLO DE XML

    <?xml version="1.0" encoding="UTF-8"?>
    <catalogo>
        <juego>
        <nombre>Bloodborne</nombre>
            <genero>Soulslike</genero>
            <desarrollador>Fromtsoftware</desarrollador>
            <edad>18</edad>
        </juego>
        <juego>
            <nombre>Bloodborne</nombre>
            <genero>Soulslike</genero>
            <desarrollador>Fromtsoftware</desarrollador>
            <edad>18</edad>
        </juego>
        <juego>
            <nombre>Bloodborne</nombre>
            <genero>Soulslike</genero>
            <desarrollador>Fromtsoftware</desarrollador>
            <edad>18</edad>
        </juego>
    </catalogo>

# DTD

Interna. Ejemplo:

La diferencia entre ambas esta en el inicio en el inicio:

Interna: <!DOCTYPE xxxx [

Externa: <!DOCTYPE xxxx SYSTEM "xxxx.dtd"

## Sintaxis de DTD

La sintaxis de DTD define qué elementos y atributos están permitidos en un documento XML, la relación entre ellos y el número de veces que pueden aparecer. La DTD utiliza una notación particular para describir la estructura del documento, que debe seguirse estrictamente para que un documento XML sea considerado válido según las reglas de su DTD.
Componentes principales de la sintaxis DTD:

Esta declaración define el tipo de documento y hace referencia a la DTD, ya sea interna o externa. Se coloca al principio del documento XML, antes del primer elemento.

## Ejemplo de una DTD interna:

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE catalogo [

        <!ELEMENT catalogo (juego+)>
        <!ELEMENT juego (nombre, genero, desarrollador, edad, id)>
        <!ELEMENT nombre (#PCDATA)>
        <!ELEMENT genero (#PCDATA)>
        <!ELEMENT desarrollador (#PCDATA)>
        <!ELEMENT edad (#PCDATA)>
        <!ELEMENT id (#PCDATA)>
    ]>



    <catalogo>
        <juego>
        <nombre>Bloodborne</nombre>
            <genero>Soulslike</genero>
            <desarrollador>Fromtsoftware</desarrollador>
            <edad>18</edad>
            <id>13345678B</id>
        </juego>
        <juego>
            <nombre>Borderlands</nombre>
            <genero>Lootershoter</genero>
            <desarrollador>Fromtsoftware</desarrollador>
            <edad>18</edad>
            <id>12345678M</id>
        </juego>
        <juego>
            <nombre>Silksong</nombre>
            <genero>Metroidvania</genero>
            <desarrollador>Cherry Team</desarrollador>
            <edad>12</edad>
            <id>7894561K</id>
        </juego>
    </catalogo>

## Ejemplo de una DTD externa:

<!ELEMENT cartera (cliente+)>
<!ELEMENT cliente (nombre, direccion, codigoP, DNI, telefono, altura, email)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT direccion (#PCDATA)>
<!ELEMENT codigoP (#PCDATA)>
<!ELEMENT DNI (#PCDATA)>
<!ELEMENT telefono (#PCDATA)>
<!ELEMENT altura (#PCDATA)>
<!ELEMENT email (#PCDATA)>

## XML de la DTD externa :

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE cartera SYSTEM "xml_dtd_EXT.dtd">
    <cartera>
        <cliente>
            <nombre>Maria Zorro</nombre>
            <direccion>Calle Afan de Ribera 5</direccion>
            <codigoP>18005</codigoP>
            <DNI>12345678L</DNI>
            <telefono>123 457 896</telefono>
            <altura>1.65</altura>
            <email>mariazorro@gmail.com</email>
        </cliente>
        <cliente>
            <nombre>Juan Carlos</nombre>
            <direccion>Calle Jueves 11</direccion>
            <codigoP>18100</codigoP>
            <DNI>78945612Ñ</DNI>
            <telefono>123 457 896</telefono>
            <altura>1.90</altura>
            <email>juancarloscuadrado@gmail.com</email>
        </cliente>
        <cliente>
            <nombre>Alejandro Lozano</nombre>
            <direccion>Calle Atenea 10</direccion>
            <codigoP>17009</codigoP>
            <DNI>45678912Ñ</DNI>
            <telefono>123 457 896</telefono>
            <altura>1.79</altura>
            <email>alejandrolozanolopez@gmail.com</email>
        </cliente>
        <cliente>
            <nombre>Javi Martin</nombre>
            <direccion>Calle</direccion>
            <codigoP></codigoP>
            <DNI>12457836M</DNI>
            <telefono>123 457 896</telefono>
            <altura>1.75</altura>
            <email>javimartinozalkd@gmail.com</email>
        </cliente>
    </cartera>

<!ELEMENT>: Define los elementos que están permitidos en el documento XML, su contenido, y las relaciones jerárquicas entre ellos. Los elementos pueden ser de varios tipos

Elementos de texto: Utilizan #PCDATA (parsed character data), que indica que el elemento contiene datos textuales.

Elementos hijos: Pueden contener otros elementos como hijos, definidos en secuencia o como opciones.

Cantidad de ocurrencias: El número de veces que un elemento puede aparecer se define mediante los operadores +, \*, ?:

    + indica que el elemento debe aparecer al menos una vez. 1-M


    * indica que el elemento puede aparecer cero o más veces. 0-M


    ? indica que el elemento es opcional y puede aparecer una o ninguna vez. 0-1

Esas marcas +, _, ? se usan en DTD y en regex (patrones de texto).
En XSD para la multiplicidad de elementos se usan minOccurs/maxOccurs, no + _ ?.

## DTD (estructura)

Aquí + \* ? sí indican cuántas veces aparece un elemento:

    <!ELEMENT catalogo (juego+)>      <!-- 1 o más -->
    <!ELEMENT pedido (item*, total)>  <!-- item 0..n -->
    <!ELEMENT persona (nick?, nombre)> <!-- nick 0..1 -->

## XSD (estructura)

Se hace con atributos, no con símbolos:

    <xs:sequence>
      <xs:element name="juego" minOccurs="1" maxOccurs="unbounded"/> <!-- 1..∞ -->
      <xs:element name="item"  minOccurs="0" maxOccurs="5"/>         <!-- 0..5 -->
      <xs:element name="nick"  minOccurs="0" maxOccurs="1"/>         <!-- 0..1 -->
    </xs:sequence>

## Equivalencias mentales:

→ minOccurs="1"

→ minOccurs="0"
  ? → minOccurs="0" maxOccurs="1"
  “muchas” → maxOccurs="unbounded"

3. XSD (patrones/regex sobre texto)

Dentro de xs:pattern sí usas + \* ?, pero para caracteres/grupos de texto, no para elementos:

    <!-- Nombre + 1 o más apellidos -->
    <xs:pattern value="[A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ]+( [A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ]+)+"/>
            # └─ + aquí significa “una o más veces” del grupo (apellido)

# XSD

La sintaxis de XSD utiliza etiquetas XML para definir la estructura y los tipos de datos de un documento.

La etiqueta principal en un esquema XSD es <xs:schema>
## Estructura básica de un esquema XSD:

    <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
      <xs:element name="persona">
        <xs:complexType>
          <xs:sequence>
            <xs:element name="nombre" type="xs:string"/>
            <xs:element name="edad" type="xs:integer"/>
          </xs:sequence>
        </xs:complexType>
      </xs:element>
    </xs:schema>

## Explicación de la sintaxis:

<xs:schema>: Esta es la raíz del esquema XSD y define el espacio de nombres para el esquema XML (xmlns:xs="http://www.w3.org/2001/XMLSchema"), lo que asegura que el esquema siga el estándar XSD del W3C.

<xs:element>: Se utiliza para declarar un elemento. En este caso, se define un elemento llamado persona, que es un contenedor para otros elementos (nombre y edad). Cada elemento puede tener atributos adicionales como el tipo de datos y restricciones específicas.

<xs:complexType>: Los tipos complejos permiten definir estructuras que contienen otros elementos. En el caso de persona, el tipo complejo permite contener una secuencia de subelementos como nombre y edad.

<xs:sequence>: Dentro de un tipo complejo, una secuencia indica que los subelementos deben aparecer en el orden especificado. En este caso, nombre debe aparecer antes que edad dentro de cualquier instancia del elemento persona.

    Tipos de datos predefinidos: XSD ofrece un conjunto robusto de tipos de datos predefinidos, que incluyen:
        xs:string: Representa texto.
        xs:integer: Representa un número entero.
        xs:date: Representa una fecha en formato ISO (YYYY-MM-DD).
        xs:boolean: Representa valores booleanos (true o false).
        xs:decimal: Representa números decimales con precisión arbitraria.

## Restricciones y validación en XSD:

XSD permite imponer restricciones adicionales sobre los valores que pueden contener los elementos o atributos. Algunas de las restricciones comunes incluyen:

## Restricciones de longitud:

    <xs:element name="NombreLimitado">
     <xs:simpleType>
       <xs:restriction base="xs:string">
         <xs:maxLength value="50"/>
       </xs:restriction>
     </xs:simpleType>
    </xs:element>

## Valores mínimos y máximos para números:

    <xs:element name="EdadLimitada">
      <xs:simpleType>
        <xs:restriction base="xs:integer">
          <xs:minInclusive value="0"/>
          <xs:maxInclusive value="120"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:element>

Este tipo restringe el valor de edad para que esté entre 0 y 120 años.

## Patrones (expresiones regulares):

    <xs:element name="Telefono">
      <xs:simpleType >
        <xs:restriction base="xs:string">
          <xs:pattern value="\d{3}-\d{3}-\d{4}"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:element>

Aquí se define un patrón de teléfono que requiere que el valor tenga el formato NNN-NNN-NNNN donde N es un dígito.

## Cardinalidad (número de ocurrencias):

    <xs:element name="telefono" type="xs:string" minOccurs="0" maxOccurs="3"/>

Esto permite que el elemento telefono aparezca hasta tres veces en el documento XML, pero puede no aparecer (minOccurs="0").

## Restricción por enumeración:

    <xs:element name="estado">
        <xs:simpleType>
            <xs:restriction base="xs:string">
                <xs:enumeration value="Pendiente"/>
                <xs:enumeration value="Enviado"/>
                <xs:enumeration value="Entregado"/>
                <xs:enumeration value="Cancelado"/>
            </xs:restriction>
        </xs:simpleType>
    </xs:element>

En este ejemplo, se define un tipo de dato personalizado NombreLimitado que restringe la longitud máxima de cualquier valor de texto a 50 caracteres.

## Valores mínimos y máximos para números:

    <xs:element name="EdadLimitada">
      <xs:simpleType>
        <xs:restriction base="xs:integer">
          <xs:minInclusive value="0"/>
          <xs:maxInclusive value="120"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:element>

Este tipo restringe el valor de edad para que esté entre 0 y 120 años.

## Patrones (expresiones regulares):

    <xs:element name="Telefono">
      <xs:simpleType >
        <xs:restriction base="xs:string">
          <xs:pattern value="\d{3}-\d{3}-\d{4}"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:element>

Aquí se define un patrón de teléfono que requiere que el valor tenga el formato NNN-NNN-NNNN donde N es un dígito.

## Cardinalidad (número de ocurrencias):

    <xs:element name="telefono" type="xs:string" minOccurs="0" maxOccurs="3"/>

    Esto permite que el elemento telefono aparezca hasta tres veces en el documento XML, pero puede no aparecer (minOccurs="0").

## Restricción por enumeración:

    <xs:element name="estado">
        <xs:simpleType>
            <xs:restriction base="xs:string">
                <xs:enumeration value="Pendiente"/>
                <xs:enumeration value="Enviado"/>
                <xs:enumeration value="Entregado"/>
                <xs:enumeration value="Cancelado"/>
            </xs:restriction>
        </xs:simpleType>
    </xs:element>

La restricción enumeration se utiliza para limitar los valores posibles de un elemento. En este caso, el elemento estado solo puede tener uno de los siguientes valores: Pendiente, Enviado, Entregado o Cancelado. Si se proporciona un valor diferente, no será válido.

Esta restricción es útil para campos que solo pueden aceptar un conjunto específico de valores, como estados, categorías, o niveles.

## Correo , como ponerlo

Expresion regular que cumpla ese valor: jcorreoelectronico@gmail.com

    <xs:pattern value="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"/>

## DNI, como ponerlo XXXXXXXX + "LETRA"

    <xs:simpleType name="dniType">
    <xs:restriction base="xs:string">
    <xs:pattern value="\d{8}[A-Z]"/>
    </xs:restriction>
    </xs:simpleType>

## Numero de telefono XXX-XXX-XXX

    <xs:element name="telefono">
    <xs:simpleType>
    <xs:restriction base="xs:string">
    <xs:pattern value="\d{3}-\d{3}-\d{3}"/>
    </xs:restriction>
    </xs:simpleType>
    </xs:element>

## Nombre , cadena que empieza por mayuscula Con \* al final

    <xs:simpleType name="nombreType">
    <xs:restriction base="xs:string">
    <xs:pattern value="[A-Z][a-z]+( [A-Z][a-z]+)\*"/>
    </xs:restriction>
    </xs:simpleType>

## Nombre y Apellido para español con Ñ incluida y tildes

    <xs:pattern value="[A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ]+ [A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ]+"/>

## Direccion. Ejemplo "Calle de Jueves" camino, ronda etc

    <xs:pattern value="((Calle|Avenida|Avda\.|Plaza|Pza\.|Paseo|Ps\.|Ronda|Camino|Ctra\.|Carretera|Travesía|Trav\.|Vía|Via|Polígono|Poligono|Urbanización|Urb\.|Barrio|Lugar|C/) )?((de|del|la|las|los|y|San|Santa) )[\p{Lu}][\p{Ll}\p{M}'-]+( ((de|del|la|las|los|y|San|Santa) )[\p{Lu}][\p{Ll}\p{M}'-]+)\*"/>

## IBSN

    <xs:element name="isbn">
    <xs:simpleType>
    <xs:restriction base="xs:string">
    <xs:pattern value="\d{3}-\d{2}-\d{4}-\d{3}-\d"/>
    </xs:restriction>
    </xs:simpleType>
    </xs:element>

## Poner un id

xs:ID es un tipo especial de XSD cuyo valor debe cumplir las reglas de NCName (nombre XML sin “:`”):

Qué implica para el valor del atributo id:

Debe empezar por una letra o “\_” (no puede empezar por dígito).

Después puede llevar letras, dígitos, “-”, “\_”, “.” (sin espacios).

No puede contener “:”.

Debe ser único en todo el documento (XSD lo garantiza automáticamente para xs:ID).

Por eso ejemplos como id="C1" funcionan: empiezan por letra y no repiten.

## Poner un codigo

En XSD, dentro de un xs:complexType:

Primero va el contenido (normalmente un xs:sequence con los elementos hijo).

Después, fuera del xs:sequence, van los atributos (xs:attribute).


## ¿Qué significa el patrón A\d{3}?

A → la letra A literal al inicio.

\d → un dígito.

{3} → exactamente 3 repeticiones.

En conjunto: “A seguido de 3 dígitos” → válido: A000, A010, A123, A999.

No válidos: B010 (no empieza por A), A12 (le falta un dígito), A1234 (le sobra un dígito), A12A (la última no es dígito).

Consejo XSD

En XML Schema 1.0 algunos validadores son tiquismiquis con \d. Para máxima compatibilidad usa [0-9]:

    <xs:attribute name="codigo" use="required">
    <xs:simpleType>
    <xs:restriction base="xs:string">
    <xs:pattern value="A[0-9]{3}"/>
    </xs:restriction>
    </xs:simpleType>
    </xs:attribute>

    Restricciones y validación en XSD:

XSD permite restricciones adicionales sobre los valores que pueden contener los elementos o atributos. Algunas de las restricciones comunes incluyen:

   ## Restricciones de longitud:

    <xs:element name="NombreLimitado">
     <xs:simpleType>
       <xs:restriction base="xs:string">
         <xs:maxLength value="50"/>
       </xs:restriction>
     </xs:simpleType>
    </xs:element>

En este ejemplo, se define un tipo de dato personalizado NombreLimitadoque la longitud máxima de cualquier valor de texto a 50 caracteres.

 ## Valores mínimos y máximos para números:

        <xs:element name="EdadLimitada">
        <xs:simpleType>
            <xs:restriction base="xs:integer">
            <xs:minInclusive value="0"/>
            <xs:maxInclusive value="120"/>
            </xs:restriction>
        </xs:simpleType>
        </xs:element>

Este tipo despaja el valor de edadpara que sea entre 0 y 120 años.

 ## Patrones (expresiones regulares):

    <xs:element name="Telefono">
    <xs:simpleType >
        <xs:restriction base="xs:string">
        <xs:pattern value="\d{3}-\d{3}-\d{4}"/>
        </xs:restriction>
    </xs:simpleType>
    </xs:element>

Aquí se define un patrón de teléfono que requiere que el valor tenga el formato NNN-NNN-NNNNdonde Nes un dígito.

## Cardinalidad (número de ocurrencias):

    <xs:element name="telefono" type="xs:string" minOccurs="0" maxOccurs="3"/>

    Esto permite que el elemento telefonoaparezca hasta tres veces en el documento XML, pero no se puede no aparecer (minOccurs="0").

    Restricción por enumeración:

    <xs:element name="estado">
        <xs:simpleType>
            <xs:restriction base="xs:string">
                <xs:enumeration value="Pendiente"/>
                <xs:enumeration value="Enviado"/>
                <xs:enumeration value="Entregado"/>
                <xs:enumeration value="Cancelado"/>
            </xs:restriction>
        </xs:simpleType>
    </xs:element>