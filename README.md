# Primer-Entregable-SQL-Coder-House

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

**Principales elementos de la base de datos:** 

**TABLAS:** 

1.	**PRODUCTOS:**
Contiene la información de los productos de fibra óptica disponibles para comprar y vender. 

Atributos: ID_PRODUCTO, ITEM, PRECIO_VENTA, PRECIO_COMPRA, FECHA_CREACION. 

2.	**CLIENTES:**
Almacena la información de los clientes a los que se venden los productos.

Atributos: ID_CLIENTE, CLIENTE, TELEFONO, MAIL, PAIS. 


3.	**PROVEEDORES:**
Almacena la información de los proveedores a los que se compran los productos. 

Atributos: ID_PROVEEDOR, PROVEEDOR, TELEFONO, MAIL.

4.	**ORDEN_VENTA:**
Registra las operaciones de venta realizadas a los clientes. 

Atributos: ID_VENTA, ID_PRODUCTO, ID_CLIENTE, PRECIO_VENTA, ID_VENDEDOR, FECHA.

5.	**ORDEN_COMPRA**
Registra las operaciones de compra realizadas a los proveedores. 

Atributos: ID_COMPRA, ID_PRODUCTO, ID_PROVEEDOR, PRECIO_COMPRA, FECHA.

6.	**FACTURAS_VENTAS**
Víncula las facturas realizas sobre las ventas de los clientes.

Atributos: ID_FCVENTA, ID_VENTA, MONTO, ID_VENDEDOR, FECHA.

7.	**FACTURAS_COMPRAS**
Víncula las facturas recibidas sobre las compras realizadas a los proveedores.

Atributos:ID_FCCOMPRA, ID_COMPRA, MONTO, FECHA.

8.	**COBROS**
Vincula los cobros recibidos a las facturas correspondientes a las operaciones de venta.

 Atributos: ID_COBRO, ID_FCVENTA, MONTO, FECHA.
    
9.	**PAGOS**
Vincula los pagos realizados por la empresa con las operaciones de compra.

Atributos: ID_PAGO, ID_FCCOMPRA, MONTO, FECHA.

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

