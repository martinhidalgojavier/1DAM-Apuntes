# Enunciado: Sistema de Gestión de un Taller Mecánico

Un taller mecánico necesita un sistema para gestionar sus vehículos, clientes, reparaciones y facturas. A continuación se describen los elementos del sistema:

1. **Clientes**: Cada cliente tiene un número de identificación único, nombre, dirección y teléfono.
2. **Vehículos**: Cada vehículo tiene un número de matrícula único, marca, modelo y año de fabricación. Un cliente puede ser propietario de varios vehículos.
3. **Reparaciones**: Cada reparación tiene un código único, fecha de inicio, fecha estimada de finalización, y estado (pendiente, en curso, finalizada). Un vehículo puede tener varias reparaciones a lo largo del tiempo.
4. **Facturas**: Cada factura tiene un número único, fecha de emisión, monto total y método de pago. Cada factura se emite a un cliente y puede estar asociada a varias reparaciones.
5. **Empleados**: Cada empleado tiene un número de identificación único, nombre, especialidad y fecha de contratación. Un empleado puede estar asignado a varias reparaciones.

## Relaciones

- Un **cliente** puede ser propietario de varios **vehículos** (Relación 1:N).
- Un **vehículo** puede ser reparado varias veces, y una reparación se realiza sobre un solo vehículo (Relación 1:N).
- Un **cliente** puede recibir varias **facturas**, y cada factura pertenece a un solo cliente (Relación 1:N).
- Una **reparación** puede tener asignado a un **empleado**, y un empleado puede participar en varias reparaciones (Relación M:N).
- Un **cliente** puede alquilar temporalmente un **vehículo** mientras su vehículo está siendo reparado (Relación de alquiler, 1:N entre cliente y vehículo alquilado).
- Cada **factura** puede cubrir múltiples **reparaciones** realizadas a un vehículo (Relación N:M).

## Tareas

1. Realiza el Diagrama Entidad-Relación (ER) para representar el sistema de gestión del taller mecánico.
2. A partir del Diagrama ER, transforma el diseño en un modelo relacional.
