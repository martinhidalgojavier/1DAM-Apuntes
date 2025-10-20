## Expresion regular que cumpla ese valor: jcorreoelectronico@gmail.com

<xs:element name="email">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>

## DNI, como ponerlo XXXXXXXX + "LETRA"

<xs:element name = "dni">
    <xs:simpleType>
         <xs:restriction base = "xs:string">
             <xs:pattern value="\d{8}[A-Z]"/>
         </xs:restriction>
    </xs:simpleType>  
 </xs:element>

## Numero de telefono XXX-XXX-XXX

<xs:element name="telefono">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="\d{3}-\d{3}-\d{3}" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>

## Nombre , cadena que empieza por mayuscula SOLO 1

<xs:element name="nombre">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            
            <xs:pattern value="[A-Z].*" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>


## Nombre y Apellido para español con Ñ incluida y tildes

<xs:pattern value="[A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ]+ [A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ]+" />

## Restricciones de longitud:

<xs:element name="NombreLimitado">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:maxLength value="50" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>

## Valores mínimos y máximos para números:

<xs:element name="EdadLimitada">
    <xs:simpleType>
        <xs:restriction base="xs:integer">
            <xs:minInclusive value="0" />
            <xs:maxInclusive value="120" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>

## Fechas YYYY-MM-DD:

<xs:element name="fechaInicio" type="xs:date" />

## Correo electronico

</xs:element>
<xs:element name="email">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>

## Precio, con decimales

<xs:element name="precio">
    <xs:simpleType>
        <xs:restriction base="xs:decimal">
            <xs:minExclusive value="0" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>

## Edad

<xs:element name="edad">
    <xs:simpleType>
        <xs:restriction base="xs:integer">
            <xs:minInclusive value="18" />
            <xs:maxInclusive value="99" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>

## Código

<xs:attribute name="codigo" use="required">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="PKT-\d{4}" />
        </xs:restriction>
    </xs:simpleType>
</xs:attribute>

## Tipos

<xs:element name="tipo">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:enumeration value="Aventura" />
            <xs:enumeration value="Relax" />
            <xs:enumeration value="Cultural" />
            <xs:enumeration value="Familiar" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>

## Codigo postal

</xs:element>
<xs:element name="codigoP">
    <xs:simpleType>
        <xs:restriction base="xs:string">
            <xs:pattern value="[0-9]{5}" />
        </xs:restriction>
    </xs:simpleType>
</xs:element>