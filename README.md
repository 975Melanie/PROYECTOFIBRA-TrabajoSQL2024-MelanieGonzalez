# Primer-Entregable-SQL-Coder-House

CREACION BASE DE DATOS PARA EL ANÁLISIS Y SEGUIMIENTO DE UN NEGOCIO DE FIBRA ÓPTICA


**Problema:** Una empresa nueva de fibra óptica está iniciando su desarrollo en el negocio. Para ello se implementó un sistema de gestión de ventas y surge la necesidad urgente de realizar informes para el análisis y gestión de objetivos para las distintas áreas y la toma de decisiones por parte de la Dirección. 


**Descripción del Problema:**
* Gestión de Clientes y Proveedores: Se requiere una base que permita registrar la información de los clientes a los que se les venden productos y a su vez, los proveedores a los que se les compran esos productos
* Gestión de Productos: Es importante poder gestionar y clasificar los productos según su tipo (datacenter, fttx, backbone) y categoría (cables, cajas, accesorios, datacenter). Esto nos ayudará a organizar mejor el flujo de trabajo y adaptar nuestros servicios según las necesidades del cliente.
* Registro de Compras y Ventas: Necesitamos un sistema que pueda registrar de manera detallada y dinámica cada compra y venta realizadas, incluyendo la fecha de creación, el cliente al que se le vendió, el proveedor al que se le compró, el producto, el usuario que gestionó la operación y estado de las mismas. 
* Registro de Facturas: Necesitamos un sistema que pueda registrar de manera detallada cada factura generada a partir de las operaciones de compra y venta, incluyendo fecha de creación, el cliente al que se le facturó o el proveedor que nos facturó, detalle del producto, y, el usuario que cargó la factura en el sistema.
* Registro de pagos y cobros: Necesitamos un sistema que registre los pagos y los cobros relacionados a las facturas cargadas en las distintas operaciones, donde se detalle la fecha de cobro o pago, el cliente o proveedor. 

**Objetivo:** Diseñar e implementar una base de datos relacional que vincule todas las operaciones de compra y venta de productos para una gestión eficiente. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con los productos. 


**Descripción de la Base de Datos:** Gestión de operaciones de compra y venta de productos de fibra óptica.

**Principales elementos de la base de datos:** 

**TABLAS:** 

1.	**CLIENTES:**
Almacena la información de los clientes a los que vendemos los productos.

Atributos: IDcliente, cliente, mail, teléfono, país. 

2.	**PRODUCTOS:**
Contiene la información de los productos de fibra óptica disponibles para comprar y vender. 

Atributos: IDproducto, nombre, categoría, tipo, precio. 

3.	**PROVEEDORES:**
Almacena la información de los proveedores a los que compramos los productos. 

Atributos: IDproveedor, proveedor, mail, teléfono, Condición_de_pago

4.	**USUARIOS:**
Contiene información sobre los empleados involucrados en las operaciones y sus procesos. 

Atributos: IDusuario, mail, teléfono, sector.

5.	**VENTAS:**
Registra las operaciones de venta hechas a los clientes. 

Atributos: IDventa, cliente, precio, producto

6.	**COMPRAS**
Registra las operaciones de venta hechas a los clientes. 

Atributos: IDcompra, proveedor, precio, producto, condición de pago. 

7.	**FACTURAS_VENTAS**


8.	**FACTURAS_COMPRAS**
    
9.	**COBROS**
    
10.	**PAGOS**

    
**Problemática Resuelta:** Esta base de datos permite analizar eficientemente las operaciones de compra y venta de productos de fibra óptica y la rentabilidad del negocio. También, permite gestionar la información de los proveedores, clientes y productos. 
*Algunos aspectos que aborda incluyen:*
* Registro de productos, clientes y proveedores involucrados en el proceso de compra/venta. 
* Registro de los usuarios responsables de la carga de información dentro del sistema.
* Clasificación de los productos según su tipo y categoría. 
* Seguimiento de pagos y cobros. 
* Registro detallado de las compras y ventas, incluyendo nombre del proveedor o cliente, fecha de creación, producto. 

*En resumen, esta base de datos proporciona una estructura para organizar, analizar y gestionar eficientemente las operaciones de compra y venta de productos de fibra óptica, lo que permite una mejor toma de decisiones del nuevo negocio y poder analizar la evolución del mismo.*

**PROYECTO FIBRA ÓPTICA**


**DER SIMPLIFICADO**
