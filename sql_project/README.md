
Primer entregable SQL CODER HOUSE
-----------------------------------------------------------------------------------------------------------------------------------------
![image](https://github.com/user-attachments/assets/26d695ac-8688-400c-a3d3-ef6f29f5a1f8)

-----------------------------------------------------------------------------------------------------------------------------------------

Alumno: Melanie Gonzalez

Comisión: 57190

Tutor: Ariel Annone

Docente: Anderson Torres 


-----------------------------------------------------------------------------------------------------------------------------------------


CREACION BASE DE DATOS PARA EL ANÁLISIS Y SEGUIMIENTO DE UN NEGOCIO DE FIBRA ÓPTICA


**Problema:** Una empresa nueva de fibra óptica está iniciando su desarrollo en el negocio. Para ello se implementó un sistema de gestión de ventas y surge la necesidad urgente de realizar análisis y seguimiento del negocio para la gestión de los objetivos y la toma de decisiones por parte de la Dirección. 


**Descripción del Problema:**
* Gestión de Clientes y Proveedores: Se requiere una base que permita registrar la información de los clientes a los que se les venden productos y a su vez, los proveedores a los que se les compran esos productos
  
* Gestión de Productos: Se necesita tener la información de los productos que se utilizarán para las distintas operaciones, ayudando a organizar mejor el flujo de trabajo y adaptar nuestros servicios según las necesidades del cliente con la administración y creación de los mismos.
  
* Registro de Compras y Ventas: Necesitamos un sistema que pueda registrar de manera detallada y dinámica cada compra y venta realizadas, incluyendo la fecha de creación, el cliente al que se le vendió, el proveedor al que se le compró, el producto, el vendedor que realizó la operación y el estado de las mismas.
    
* Registro de Facturas: Es de suma importancia poder registrar de manera detallada cada factura generada a partir de las operaciones de compra y venta, incluyendo fecha de creación, orden vendida o comprada, su monto y el vendedor que generó dicha facturación. 
  
* Registro de pagos y cobros: Necesitamos un sistema que registre los pagos y los cobros relacionados a las facturas cargadas en las distintas operaciones, donde se detalle la fecha de cobro o pago y monto, para poder administrar el dinero que ingresa o egresa del negocio. 

**Objetivo:** Diseñar e implementar una base de datos relacional que vincule todas las operaciones de compra y venta de productos para una gestión eficiente. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con los productos. 


**Descripción de la Base de Datos:** Gestión de operaciones de compra y venta de productos de fibra óptica.

-----------------------------------------------------------------------------------------------------------------------------------------
**Principales elementos de la base de datos:** 

**TABLAS:**

1.	**PRODUCTOS:**
Contiene la información de los productos de fibra óptica disponibles para comprar y vender. 

Atributos: ID_PRODUCTO, ITEM, PRECIO_VENTA, PRECIO_COMPRA. 

2.	**CLIENTES:**
Almacena la información de los clientes a los que se venden los productos.

Atributos: ID_CLIENTE, CLIENTE, TELEFONO, MAIL, PAIS. 


3.	**PROVEEDORES:**
Almacena la información de los proveedores a los que se compran los productos. 

Atributos: ID_PROVEEDOR, PROVEEDOR, TELEFONO, MAIL.

4.	**ORDEN_VENTA:**
Registra las operaciones de venta realizadas a los clientes. 

Atributos: ID_VENTA, ID_PRODUCTO, ID_CLIENTE, PRECIO_VENTA, CANTIDAD, MONTO, ID_VENDEDOR, FECHA.

5.	**ORDEN_COMPRA**
Registra las operaciones de compra realizadas a los proveedores. 

Atributos: ID_COMPRA, ID_PRODUCTO, ID_PROVEEDOR, PRECIO_COMPRA,CANTIDAD, MONTO, FECHA.

6.	**FACTURAS_VENTAS**
Víncula las facturas realizas sobre las ventas de los clientes.

Atributos: ID_FCVENTA, ID_VENTA, MONTO, ID_VENDEDOR, FECHA_FACTURA.

7.	**FACTURAS_COMPRAS**
Víncula las facturas recibidas sobre las compras realizadas a los proveedores.

Atributos:ID_FCCOMPRA, ID_COMPRA, MONTO, FECHA_FACTURA.

8.	**COBROS**
Vincula los cobros recibidos a las facturas correspondientes a las operaciones de venta.

 Atributos: ID_COBRO, ID_FCVENTA, MONTO, FECHA_COBRO.
    
9.	**PAGOS**
Vincula los pagos realizados por la empresa con las operaciones de compra.

Atributos: ID_PAGO, ID_FCCOMPRA, MONTO, FECHA_PAGO.

10.	**VENDEDORES:**
Contiene información sobre los vendedores de la empresa involucrados en las operaciones de venta.

Atributos: ID_VENDEDOR, NOMBRE, TELEFONO, CORREO.
    
**Problemática Resuelta:** Esta base de datos permite analizar eficientemente las operaciones de compra y venta de productos de fibra óptica y la rentabilidad del negocio. También, permite gestionar la información de los proveedores, clientes, productos y vendedores. 

*Algunos aspectos que aborda incluyen:*
* Registro de productos, clientes, proveedores y vendedores involucrados en el proceso de compra/venta.
* Registro detallado de las compras y ventas, incluyendo nombre del proveedor o cliente, fecha de creación, producto y montos.
* Administración sobre la facturación de las operaciones.
* Seguimiento de pagos y cobros (ingreso/egreso). 


*En resumen, esta base de datos proporciona una estructura para organizar, analizar y gestionar eficientemente las operaciones de compra y venta de productos de fibra óptica, lo que permite una mejor toma de decisiones del nuevo negocio y poder analizar la evolución del mismo.*

**PROYECTO FIBRA ÓPTICA**


**DER SIMPLIFICADO**


![image](https://github.com/975Melanie/Primer-Entregable-SQL-Coder-House/assets/174355624/dc5d4561-5c92-49b8-a91b-326b50d0cc44)


**SEGUNDA PARTE DE LA ENTREGA**


* Listado de Vistas más una descripción, su objetivo, y qué tablas las componen.



* Listado de Funciones que incluyan una descripción detallada, el objetivo para la cual fueron creadas y qué datos o tablas manipulan y/o son implementadas.


* Listado de Stored Procedures con una descripción detallada, qué objetivo o beneficio aportan al proyecto, y las tablas que lo componen y/o tablas con las que interactúa


* Listado de Triggers


**Documentacion de Vistas**

*VISTA: TopCincoVentas*

Esta vista muestra las 5 ventas de mayor valor y su cliente. El objetivo es poder detectar qué clientes son los que generan mayores ingresos. 

TABLA: ORDEN_VENTA
COLUMNAS: ID_VENTA, ID_CLIENTE. 


*VISTA: ProductosMasVendidos*

Esta vista nos permite visualizar una lista de los 10 productos más vendidos. La idea es poder detectar qué productos son los que generan mayores ingresos al proyecto. 

TABLA: ORDEN_VENTA
COLUMNAS: ID_PRODUCTO



**Documentación de Funciones**

 *FUNCIÓN: CalcularRentabilidad*
 
 Esta función calcula la rentabilidad generada a partir de las ventas. La idea es poder visualizar las ganancias descontando los costos de los productos vendidos. 

 *FUNCIÓN: CalcularComision*
 
Esta función calcula la comisión que le corresponde cobrar a cada vendedor por cada venta realizada. La comisión corresponde al 5% del monto total de cada venta. 

**Documentación de Procedimientos Almacenados**

*PROCEDIMIENTO: RegistrarVenta*

Este procedimiento registra las ventas nuevas, su monto total y genera la factura a partir de la misma. 

Parámetros: id_producto, id_cliente, precio_venta, cantidad, id_vendedor, fecha DATE. 

Retorno: Monto, Factura_venta


**Documentación de Triggers**

*TRIGGER: ModificacionFactura*

Este trigger permite auditar las modificaciones realizadas en las facturas, visualizando el usuario que efectuó la modificación. 

Tabla afectada: FACTURAS_VENTAS
Acción: INSERT



