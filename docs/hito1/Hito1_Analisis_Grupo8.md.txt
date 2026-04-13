# Hito 1 - Análisis inicial

## 1. Nombre del sistema
Sistema de Gestión de Inventario para Tienda

## 2. Tipo de comercio
Comercio minorista orientado a la venta de productos, como ropa, accesorios u otros artículos, con control de inventario interno.

## 3. Problema
Actualmente, la tienda presenta deficiencias en el control y precisión del inventario, lo que genera inconsistencias en la cantidad real de productos disponibles. Esto provoca situaciones como sobrestock en algunos artículos y falta de disponibilidad en otros, afectando directamente las ventas.

El manejo manual del inventario ocasiona errores en el registro de entradas y salidas de mercancía, así como pérdida de tiempo en la verificación de existencias. Además, existen dificultades en el control de las facturas de proveedores, tanto pagadas como pendientes, lo que complica la gestión financiera.

Estos problemas afectan la eficiencia operativa del negocio y la toma de decisiones, evidenciando la necesidad de un sistema automatizado que permita un control más preciso, organizado y confiable del inventario.

## 4. Objetivo general
Desarrollar un sistema de gestión de inventario para tienda que permita controlar de forma organizada las entradas y salidas de productos, registrar ventas, gestionar compras a proveedores y facilitar la generación de reportes para apoyar la toma de decisiones.

## 5. Objetivos específicos
- Registrar y actualizar la información de los productos dentro del inventario.
- Controlar las entradas y salidas de mercancía de forma más precisa.
- Permitir el registro de ventas con actualización automática del stock.
- Gestionar órdenes de compra y facturas de proveedores.
- Generar reportes que ayuden al gerente a supervisar el estado del inventario y las operaciones del negocio.

## 6. Propuesta de valor
El sistema aportará valor al negocio al reducir errores en el manejo del inventario, mejorar la rapidez en las consultas de disponibilidad, facilitar el control de compras y facturas, y ofrecer información más clara para la toma de decisiones. Con esto se busca mejorar la organización interna, disminuir pérdidas por descontrol de stock y hacer más eficiente la operación diaria de la tienda.

## 7. Stakeholders
| Stakeholder          | Rol                                | Necesidad |
|----------------------|-------------------------------------|-----------|
| Vendedor             | Atender clientes y registrar ventas | Consultar disponibilidad de productos y registrar ventas de forma efectiva. |
| Encargado de almacén | Registrar entrada de productos y controlar existencias | Mantener actualizado el inventario y saber cuándo es necesario realizar pedidos. |
| Encargado de compras | Generar y gestionar órdenes de compra | Controlar pedidos y facturas de proveedores. |
| Gerente              | Supervisar el funcionamiento de la tienda | Obtener reportes de inventario y apoyar la toma de decisiones. |
| Proveedores          | Suministrar productos a la tienda | Recibir pedidos con detalles claros de cantidad, talla, color y fecha de entrega. |
| Clientes             | Comprar productos | Encontrar disponibilidad del producto que necesitan y recibir buen servicio. |
## 8. Requerimientos funcionales
| ID | Descripción | Prioridad | Fuente | Cómo se comprobará |
|----|-------------|-----------|--------|--------------------|
| RF-001 | La aplicación debe permitir registrar productos nuevos y las categorías. | Alta | Encargado de almacén | Se guarda el producto y aparece en el listado. |
| RF-002 | La aplicación debe permitir editar los datos de un producto si hubo un error. | Media | Encargado de almacén | Se cambia el dato y al volver a entrar queda actualizado. |
| RF-003 | La aplicación debe permitir dar entrada de mercancía cuando llega un pedido. | Alta | Encargado de almacén | La cantidad sube y queda registrada la entrada. |
| RF-004 | La aplicación debe permitir registrar ventas y descontar automáticamente del inventario. | Alta | Vendedor | Se registra la venta y baja el stock del producto. |
| RF-005 | La aplicación debe permitir buscar productos por nombre, código o proveedor. | Alta | Vendedor | Al escribir, aparecen resultados sin tener que buscar manual. |
| RF-006 | La aplicación debe mostrar en pantalla la cantidad disponible de cada producto. | Alta | Vendedor | Se ve el stock actualizado al momento. |
| RF-007 | La aplicación debe avisar cuando un producto está en stock bajo. | Alta | Gerente | Sale una alerta o lista de productos por reponer. |
| RF-008 | La aplicación debe permitir configurar un mínimo de stock por producto. | Media | Gerente | Se define un mínimo y se usa para las alertas. |
| RF-009 | La aplicación debe permitir crear órdenes de compra cuando falte mercancía. | Alta | Encargado de compras | Se genera la orden con productos y cantidades. |
| RF-010 | La aplicación debe guardar las órdenes de compra para consultarlas después. | Media | Encargado de compras | Se puede abrir una orden vieja y verla completa. |
| RF-011 | La aplicación debe registrar facturas de proveedores, monto, fecha y proveedor. | Alta | Encargado de compras | Se guarda la factura y queda en el listado. |
| RF-012 | La aplicación debe permitir marcar facturas como pagadas o pendientes. | Alta | Gerente | Se cambia el estado y se refleja en la lista. |
| RF-013 | La aplicación debe permitir ver un historial de movimientos de entradas, ventas y ajustes. | Alta | Gerente | Se ve la lista por fecha y quién lo hizo. |
| RF-014 | La aplicación debe generar reportes básicos de inventario actual, productos bajos y ventas. | Media | Gerente | Se genera un reporte y se puede imprimir o exportar. |
| RF-015 | La aplicación debe manejar usuarios con roles como vendedor, almacén, compras y gerente. | Alta | Gerente | Cada usuario entra con su cuenta y ve solo lo que le corresponde. |

## 9. Requerimientos no funcionales
| ID | Categoría | Descripción | Cómo se medirá |
|----|-----------|-------------|----------------|
| RNF-001 | Usabilidad | La aplicación debe ser fácil de usar, con botones y pantallas claras. | El usuario puede hacer tareas básicas sin estar preguntando todo el tiempo. |
| RNF-002 | Rendimiento | Las búsquedas y listados deben cargar rápido. | La consulta responde en menos de 4 segundos con datos normales. |
| RNF-003 | Seguridad | La aplicación debe pedir usuario y contraseña para entrar. | No permite entrar si no se inicia sesión correctamente. |
| RNF-004 | Seguridad | Cada rol debe tener permisos diferentes. | Si un vendedor intenta entrar a Compras, no lo deja. |
| RNF-005 | Confiabilidad | No debe cerrarse sola ni dar errores frecuentes. | Pruebas de uso diario sin cierres inesperados. |
| RNF-006 | Respaldo | Debe poder hacer copia de seguridad de la base de datos. | Se genera un backup y se puede restaurar. |
| RNF-007 | Compatibilidad | Debe correr en Windows, por lo menos en Windows 10 y 11. | Se instala y funciona sin problemas en una PC estándar. |
| RNF-008 | Mantenibilidad | El sistema debe estar organizado para poder agregar mejoras luego. | El código se maneja por capas y se puede modificar sin dañar todo. |

## 10. Matriz de trazabilidad (Requerimientos vs Casos de Uso)
| Requerimiento | Caso de Uso | Nombre del Caso de Uso |
|--------------|-------------|------------------------|
| RF-001 | CDU-005 | Registrar producto |
| RF-002 | CDU-006 | Editar producto |
| RF-003 | CDU-007 | Registrar entrada de mercancía |
| RF-004 | CDU-004 | Registrar venta |
| RF-005 | CDU-003 | Buscar producto |
| RF-006 | CDU-002 | Consultar stock disponible |
| RF-007 | CDU-013 | Generar reportes |
| RF-008 | CDU-013 | Generar reportes |
| RF-009 | CDU-010 | Registrar orden de compra |
| RF-010 | CDU-009 | Consultar órdenes de compra |
| RF-011 | CDU-011 | Registrar factura de proveedor |
| RF-012 | CDU-012 | Actualizar estado de factura |
| RF-013 | CDU-008 | Consultar historial de movimientos |
| RF-014 | CDU-013 | Generar reportes |
| RF-015 | CDU-001 | Iniciar sesión |
 


