<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="reservas">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="reserva" maxOccurs="unbounded">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="cliente">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="nombre">
                                         </xs:element>
                                        <xs:element name="dni">
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="habitacion">
                            </xs:element>
                        </xs:sequence>
                        <xs:attribute name="codigo" use="required">
                        </xs:attribute>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>