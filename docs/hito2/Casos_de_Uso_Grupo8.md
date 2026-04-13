# Especificación de Casos de Uso - Grupo 8

## CDU-001 - Iniciar sesión

**Actores:** Vendedor, Gerente, Encargado de compras, Encargado de almacén.  
**Descripción:** Permite que el usuario acceda al sistema mediante su nombre de usuario y contraseña, para entrar a las opciones que le corresponden según su rol.  
**Precondiciones:**  
- El usuario debe estar registrado en el sistema.  
- El sistema debe estar disponible.  

**Flujo principal:**  
1. El usuario abre la pantalla de inicio de sesión.  
2. El sistema muestra los campos de usuario y contraseña.  
3. El usuario introduce sus credenciales.  
4. El sistema valida la información ingresada.  
5. El sistema identifica el rol del usuario.  
6. El sistema permite el acceso al menú principal correspondiente.  
7. El sistema registra el inicio de sesión.

**Flujos alternos:**  
- 4a. Si las credenciales son incorrectas:  
  1. El sistema muestra un mensaje de error.  
  2. El usuario puede volver a intentar.  
- 5a. Si el usuario está inactivo o bloqueado:  
  1. El sistema deniega el acceso.  
  2. Muestra un mensaje indicando que debe comunicarse con el administrador.

**Postcondiciones:**  
- El usuario inicia sesión correctamente con los permisos de su rol.  
- El acceso queda registrado en el sistema.

**Requerimiento asociado:** RF-015

---

## CDU-004 - Registrar venta

**Actor:** Vendedor.  
**Descripción:** Permite registrar una venta de productos y descontar automáticamente las cantidades vendidas del inventario.  
**Precondiciones:**  
- El vendedor debe haber iniciado sesión.  
- Los productos deben existir en el sistema.  
- Debe haber stock disponible.

**Flujo principal:**  
1. El vendedor accede al módulo de ventas.  
2. Busca y selecciona los productos que el cliente desea comprar.  
3. Introduce la cantidad de cada producto.  
4. El sistema verifica la disponibilidad en inventario.  
5. El vendedor confirma la venta.  
6. El sistema registra la venta.  
7. El sistema descuenta automáticamente las cantidades vendidas.  
8. El sistema guarda el movimiento en el historial.

**Flujos alternos:**  
- 4a. Si un producto no tiene stock suficiente:  
  1. El sistema muestra una alerta de cantidad insuficiente.  
  2. El vendedor puede modificar la cantidad o cancelar la operación.  
- 2a. Si el producto no se encuentra:  
  1. El sistema informa que no hay coincidencias.  
  2. El vendedor puede realizar una nueva búsqueda.

**Postcondiciones:**  
- La venta queda registrada.  
- El inventario queda actualizado.  
- El movimiento queda guardado en el historial.

**Requerimiento asociado:** RF-004

---

## CDU-005 - Registrar producto

**Actor:** Encargado de almacén.  
**Descripción:** Permite registrar un producto nuevo dentro del sistema de inventario con sus datos básicos y categoría.  
**Precondiciones:**  
- El usuario debe haber iniciado sesión.  
- Debe tener permisos para registrar productos.

**Flujo principal:**  
1. El encargado de almacén accede al módulo de inventario.  
2. Selecciona la opción de registrar producto.  
3. El sistema muestra el formulario de registro.  
4. El usuario introduce los datos del producto.  
5. Selecciona la categoría correspondiente.  
6. Confirma el registro.  
7. El sistema valida la información ingresada.  
8. El sistema guarda el producto en el inventario.

**Flujos alternos:**  
- 7a. Si falta un dato obligatorio:  
  1. El sistema muestra un mensaje indicando la información faltante.  
  2. El usuario completa los datos y vuelve a confirmar.  
- 8a. Si el producto ya existe:  
  1. El sistema informa que el producto ya está registrado.  
  2. El proceso no se completa hasta corregir la situación.

**Postcondiciones:**  
- El producto queda registrado en el sistema.  
- El producto aparece disponible para futuras consultas y movimientos.

**Requerimiento asociado:** RF-001

---

## CDU-007 - Registrar entrada de mercancía

**Actor:** Encargado de almacén.  
**Descripción:** Permite registrar la entrada de mercancía al inventario a partir de una orden de compra existente.  
**Precondiciones:**  
- El usuario debe haber iniciado sesión.  
- Debe existir una orden de compra registrada.  
- Los productos deben existir en el sistema.

**Flujo principal:**  
1. El encargado de almacén accede al módulo de entradas.  
2. Selecciona la orden de compra correspondiente.  
3. El sistema muestra los productos incluidos en la orden.  
4. El usuario introduce las cantidades recibidas.  
5. El sistema compara las cantidades recibidas con las cantidades ordenadas.  
6. El usuario confirma la recepción.  
7. El sistema actualiza el inventario sumando las cantidades recibidas.  
8. El sistema registra el movimiento en el historial.  
9. El sistema actualiza el estado de la orden a recibida.

**Flujos alternos:**  
- 5a. Si existen diferencias entre lo pedido y lo recibido:  
  1. El sistema registra la observación correspondiente.  
  2. El usuario decide si confirma la entrada parcial o corrige la información.  
- 2a. Si la orden no existe:  
  1. El sistema informa que la orden no fue encontrada.  
  2. El usuario regresa al listado para seleccionar otra.

**Postcondiciones:**  
- El inventario aumenta según la mercancía recibida.  
- El historial de movimientos queda actualizado.  
- La orden cambia de estado.

**Requerimiento asociado:** RF-003

---

## CDU-010 - Registrar orden de compra

**Actor:** Encargado de compras.  
**Descripción:** Permite generar una orden de compra dirigida a un proveedor cuando se necesita reponer mercancía.  
**Precondiciones:**  
- El usuario debe haber iniciado sesión.  
- Debe existir al menos un proveedor registrado.  
- Los productos deben estar registrados en el sistema.

**Flujo principal:**  
1. El encargado de compras accede al módulo de compras.  
2. Selecciona la opción de registrar orden de compra.  
3. El sistema muestra el formulario de orden.  
4. El usuario selecciona el proveedor correspondiente.  
5. Selecciona los productos que desea comprar.  
6. Introduce las cantidades requeridas.  
7. Confirma la orden de compra.  
8. El sistema valida la información ingresada.  
9. El sistema registra la orden.

**Flujos alternos:**  
- 4a. Si el proveedor no existe:  
  1. El sistema muestra un mensaje indicando que el proveedor no está registrado.  
  2. El usuario cancela o busca otro proveedor registrado.  
- 8a. Si no se seleccionan productos o cantidades:  
  1. El sistema muestra un mensaje indicando que faltan datos.  
  2. El usuario completa la información antes de continuar.

**Postcondiciones:**  
- La orden de compra queda registrada en el sistema.  
- La orden puede ser consultada posteriormente.

**Requerimiento asociado:** RF-009