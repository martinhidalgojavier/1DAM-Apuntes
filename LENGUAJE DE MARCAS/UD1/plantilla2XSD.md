CHULETA DE XSD
----------------------------------------------------------------
Esta es la estructura basica de un xsd el primero te
suele decir que hay varios por esto esta maxOccursUnbounded
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="inventario">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="usuario" maxOccurs="unbounded">
                    <xs:complexType>
                        <xs:sequence>

                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>
----------------------------------------------------------------
Esto es en el caso que tuviesemos que poner algo con un minimo y maximo con enteros

<xs:element name="stock">
    <xs:simpleType>
        <xs:restriction base="xs:integer">
            <xs:minInclusive value="0" />
            <xs:maxInclusive value="1000" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>
----------------------------------------------------------------
Este es para poner una de varias opciones dentro de un elemento

<xs:element name="categoria">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:enumeration value="Periferico" />
            <xs:enumeration value="Ordenador" />
            <xs:enumeration value="Movil" />
            <xs:enumeration value="Accesorio" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>
----------------------------------------------------------------
Este es el regex de un dni

<xs:element name="dni">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="[0-9]{8}[A-Z]{1}" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>
----------------------------------------------------------------
Este es un codigo que tiene que ir con atributos

<xs:attribute name="codigo" use="required">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="R\d{3}" />
        </xs:restriction>
    </xs:simpleType>
</xs:attribute>
----------------------------------------------------------------
Este es el regex de un email

<xs:element name="email">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern
                value="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>
----------------------------------------------------------------
Este es para un nombre que empiece con mayuscula

<xs:element name="nombre">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="[A-Z].\*"></xs:pattern>
        </xs:restriction>
    </xs:simpleType>
</xs:element>
----------------------------------------------------------------
Este seria para una edad que este entre dos numeros

<xs:element name="edad">
    <xs:simpleType>
        <xs:restriction base="xs:integer">
            <xs:minInclusive value="18"></xs:minInclusive>
            <xs:maxInclusive value="99"></xs:maxInclusive>
        </xs:restriction>
    </xs:simpleType>
</xs:element>
----------------------------------------------------------------
Los atributos (<xs:attribute>) van dentro de un <xs:complexType/> pero fuera de un sequence

<xs:complexType>
    <xs:attribute name="id" type="xs:integer" use="required" />
    <xs:sequence>
        <xs:element name="nombre" type="xs:string" />
        <xs:element name="precio" type="xs:decimal" />
    </xs:sequence>
</xs:complexType>
----------------------------------------------------------------
Este es la estructura en el caso que me pidiesen telefono
<element name="telefono">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="[0-9]{3}-[0-9]{3}-[0-9]{3}"></xs:pattern>
        </xs:restriction>
    </xs:simpleType>
</element>
----------------------------------------------------------------
En el caso que me pongan cadena obligatoria de algo pondria

<xs:element name="destino" type="xs:string" minOccurs="1"/>


----------------------------------------------------------------

Apuntes:
-Los atributos van dentro del complextype pero fuera de el sequence
-Casi todas las <xs:restriction/> suele haber una base <xs:restriction base="xs:string">
-Copia y pega bien manin    
-La diferencia entre minInclusive y minExclusive es que el 
primero el valor puede ser el numero introducido o mas
y el otro tiene que ser mayor q el numero introducido

----------------------------------------------------------------


En el xml del XSD para que conecten debes introducir estas lineas

<?xml version="1.0" encoding="UTF-8"?>
<biblioteca xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xsi:noNamespaceSchemaLocation="ejercicio1.xsd">
</biblioteca>

reemplazando el "ejercicio1.xsd" por el xsd correspondiente


----------------------------------------------------------------

CHULETA DTD

----------------------------------------------------------------

Estructura basica seria:

  <!ELEMENT liga (entrenador)>
    <!ELEMENT entrenador (nombre, pokemon)>
    <!ELEMENT pokemon (nombre, tipo, nivel)>
    <!ELEMENT nombre (#PCDATA)>
    <!ELEMENT tipo (#PCDATA)>
    <!ELEMENT nivel (#PCDATA)>

    recuerda que: 
    + puede ser 1 o mas
    ? puede ser 0 o 1 vez
    * puede aparecer 0 o mas veces
    si no tiene nada solo puede aparecer 1
    #PCDATA Esto es para que el usuario lo escriba
----------------------------------------------------------------
Para yo unir el xml con el xsd cuando sea externo:

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE liga SYSTEM "liga.dtd">

Reemplazando liga.dtd por el nombre correspondiente de tu dtd
----------------------------------------------------------------
En el caso de q fuese un DTD interno este seria un buen ejemplo:

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE pokemon [
  <!ELEMENT pokemon (nombre, tipo, nivel?)>
  <!ELEMENT nombre (#PCDATA)>
  <!ELEMENT tipo (#PCDATA)>
  <!ELEMENT nivel (#PCDATA)>
]>
<pokemon>
  <nombre>Pikachu</nombre>
  <tipo>Eléctrico</tipo>
  <nivel>3</nivel>
  
</pokemon>