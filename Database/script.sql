-- =========================================
-- CREACIÓN DE LA BASE DE DATOS
-- =========================================

CREATE DATABASE IF NOT EXISTS inventario_db
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE inventario_db;

-- =========================================
-- TABLAS PRINCIPALES
-- =========================================

CREATE TABLE Rol (
    id_rol INT PRIMARY KEY,
    nombre_rol VARCHAR(50),
    descripcion VARCHAR(150),
    estado VARCHAR(15)
) ENGINE=InnoDB;

CREATE TABLE Proveedor (
    id_proveedor INT PRIMARY KEY,
    nombre_comercial VARCHAR(100),
    rnc VARCHAR(20),
    contacto VARCHAR(100),
    telefono VARCHAR(20),
    correo VARCHAR(100),
    direccion VARCHAR(150),
    estado VARCHAR(15)
) ENGINE=InnoDB;

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    nombre_categoria VARCHAR(100),
    descripcion VARCHAR(150),
    estado VARCHAR(15)
) ENGINE=InnoDB;

CREATE TABLE Talla (
    id_talla INT PRIMARY KEY,
    nombre_talla VARCHAR(20),
    descripcion VARCHAR(100),
    estado VARCHAR(15)
) ENGINE=InnoDB;

CREATE TABLE Color (
    id_color INT PRIMARY KEY,
    nombre_color VARCHAR(30),
    descripcion VARCHAR(100),
    estado VARCHAR(15)
) ENGINE=InnoDB;


-- =========================================
-- USUARIO Y ACCESOS
-- =========================================

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nombres VARCHAR(100),
    apellidos VARCHAR(100),
    nombre_usuario VARCHAR(50),
    clave VARCHAR(100),
    correo VARCHAR(100),
    telefono VARCHAR(20),
    estado VARCHAR(15),
    id_rol INT,
    CONSTRAINT fk_usuario_rol
        FOREIGN KEY (id_rol) REFERENCES Rol(id_rol)
) ENGINE=InnoDB;

CREATE TABLE RegistroAcceso (
    id_registro_acceso INT PRIMARY KEY,
    fecha_hora_entrada TIMESTAMP,
    fecha_hora_salida TIMESTAMP,
    resultado_acceso VARCHAR(20),
    detalle VARCHAR(150),
    id_usuario INT,
    CONSTRAINT fk_registro_usuario
        FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
) ENGINE=InnoDB;


-- =========================================
-- PRODUCTOS
-- =========================================

CREATE TABLE Producto (
    id_producto INT PRIMARY KEY,
    codigo_producto VARCHAR(50),
    nombre_producto VARCHAR(100),
    descripcion VARCHAR(200),
    stock_minimo INT,
    estado VARCHAR(15),
    id_categoria INT,
    id_proveedor INT,
    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    CONSTRAINT fk_producto_proveedor
        FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
) ENGINE=InnoDB;

CREATE TABLE VarianteProducto (
    id_variante_producto INT PRIMARY KEY,
    sku VARCHAR(50),
    codigo_barra VARCHAR(50),
    precio_compra DECIMAL(10,2),
    precio_venta DECIMAL(10,2),
    estado VARCHAR(15),
    id_producto INT,
    id_talla INT,
    id_color INT,
    CONSTRAINT fk_variante_producto
        FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
    CONSTRAINT fk_variante_talla
        FOREIGN KEY (id_talla) REFERENCES Talla(id_talla),
    CONSTRAINT fk_variante_color
        FOREIGN KEY (id_color) REFERENCES Color(id_color)
) ENGINE=InnoDB;


-- =========================================
-- INVENTARIO
-- =========================================

CREATE TABLE Inventario (
    id_inventario INT PRIMARY KEY,
    existencia_actual INT,
    ultima_actualizacion TIMESTAMP,
    ubicacion VARCHAR(100),
    id_variante_producto INT UNIQUE,
    CONSTRAINT fk_inventario_variante
        FOREIGN KEY (id_variante_producto) REFERENCES VarianteProducto(id_variante_producto)
) ENGINE=InnoDB;

CREATE TABLE MovimientoInventario (
    id_movimiento_inventario INT PRIMARY KEY,
    tipo_movimiento VARCHAR(20),
    cantidad INT,
    fecha_movimiento TIMESTAMP,
    referencia VARCHAR(100),
    observacion VARCHAR(150),
    id_inventario INT,
    id_usuario INT,
    CONSTRAINT fk_movimiento_inventario
        FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario),
    CONSTRAINT fk_movimiento_usuario
        FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
) ENGINE=InnoDB;


-- =========================================
-- VENTAS
-- =========================================

CREATE TABLE Venta (
    id_venta INT PRIMARY KEY,
    numero_venta VARCHAR(50),
    fecha_venta TIMESTAMP,
    total_venta DECIMAL(10,2),
    estado VARCHAR(15),
    id_usuario INT,
    CONSTRAINT fk_venta_usuario
        FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
) ENGINE=InnoDB;

CREATE TABLE DetalleVenta (
    id_detalle_venta INT PRIMARY KEY,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    id_venta INT,
    id_variante_producto INT,
    CONSTRAINT fk_detalle_venta
        FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
    CONSTRAINT fk_detalle_variante
        FOREIGN KEY (id_variante_producto) REFERENCES VarianteProducto(id_variante_producto)
) ENGINE=InnoDB;


-- =========================================
-- COMPRAS
-- =========================================

CREATE TABLE OrdenCompra (
    id_orden_compra INT PRIMARY KEY,
    numero_orden VARCHAR(50),
    fecha_orden DATE,
    fecha_entrega_esperada DATE,
    estado VARCHAR(15),
    total_estimado DECIMAL(10,2),
    observacion VARCHAR(150),
    id_proveedor INT,
    id_usuario INT,
    CONSTRAINT fk_orden_proveedor
        FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor),
    CONSTRAINT fk_orden_usuario
        FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
) ENGINE=InnoDB;

CREATE TABLE DetalleOrdenCompra (
    id_detalle_orden_compra INT PRIMARY KEY,
    cantidad_solicitada INT,
    costo_unitario DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    id_orden_compra INT,
    id_variante_producto INT,
    CONSTRAINT fk_detalle_orden
        FOREIGN KEY (id_orden_compra) REFERENCES OrdenCompra(id_orden_compra),
    CONSTRAINT fk_detalle_orden_variante
        FOREIGN KEY (id_variante_producto) REFERENCES VarianteProducto(id_variante_producto)
) ENGINE=InnoDB;


-- =========================================
-- RECEPCIÓN
-- =========================================

CREATE TABLE RecepcionMercancia (
    id_recepcion_mercancia INT PRIMARY KEY,
    fecha_recepcion DATE,
    numero_documento VARCHAR(50),
    observacion VARCHAR(150),
    id_orden_compra INT,
    id_usuario INT,
    CONSTRAINT fk_recepcion_orden
        FOREIGN KEY (id_orden_compra) REFERENCES OrdenCompra(id_orden_compra),
    CONSTRAINT fk_recepcion_usuario
        FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
) ENGINE=InnoDB;

CREATE TABLE DetalleRecepcion (
    id_detalle_recepcion INT PRIMARY KEY,
    cantidad_recibida INT,
    costo_unitario DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    id_recepcion_mercancia INT,
    id_variante_producto INT,
    CONSTRAINT fk_detalle_recepcion
        FOREIGN KEY (id_recepcion_mercancia) REFERENCES RecepcionMercancia(id_recepcion_mercancia),
    CONSTRAINT fk_detalle_recepcion_variante
        FOREIGN KEY (id_variante_producto) REFERENCES VarianteProducto(id_variante_producto)
) ENGINE=InnoDB;


-- =========================================
-- FACTURACIÓN
-- =========================================

CREATE TABLE FacturaProveedor (
    id_factura_proveedor INT PRIMARY KEY,
    numero_factura VARCHAR(50),
    fecha_factura DATE,
    fecha_vencimiento DATE,
    monto_total DECIMAL(10,2),
    estado_pago VARCHAR(20),
    fecha_pago DATE,
    id_proveedor INT,
    id_orden_compra INT,
    CONSTRAINT fk_factura_proveedor
        FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor),
    CONSTRAINT fk_factura_orden
        FOREIGN KEY (id_orden_compra) REFERENCES OrdenCompra(id_orden_compra)
) ENGINE=InnoDB;