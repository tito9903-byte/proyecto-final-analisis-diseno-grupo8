# Sistema de Gestión de Inventario para Tienda
## Proyecto Final - Análisis y Diseño de Sistemas - Grupo 8

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0-green.svg)](CHANGELOG.md)

## Integrantes del Equipo

| Nombre | Matrícula | Rol Principal |
|--------|-----------|---------------|
| Julio Ernesto García Estrella | 100088295 | Diseño y creatividad |
| Luis Emilio García Pichardo | 100083094 | Análisis y pensamiento lógico |
| Elvia Martínez Tavárez | 100073353 | Documentación y redacción |
| Ashley Esther Polanco Báez | 100088048 | Presentación y comunicación |
| César Adrián Reyes Dinzey | 100088263 | Liderazgo y organización |

## Información Académica

- **Asignatura:** Análisis y Diseño de Sistemas (ADS-301)
- **Facilitador:** Joan Manuel Gregorio Pérez
- **Trimestre:** Febrero-Abril 2026
- **Valor del proyecto:** 40 puntos (40% de la calificación final)

## Descripción del Proyecto

Sistema integral para la gestión de inventario, ventas, compras y facturación de proveedores en una tienda. Permite controlar de manera eficiente el stock, generar órdenes de compra automáticas, registrar ventas y mantener un control financiero preciso.

### Problema Resuelto

- **Inconsistencias en inventario:** Errores manuales en el registro de productos
- **Pérdidas de ventas:** Falta de stock disponible por mala gestión
- **Control financiero:** Dificultad en el seguimiento de facturas de proveedores
- **Ineficiencia operativa:** Procesos manuales lentos y propensos a errores

### Solución Propuesta

Sistema automatizado que proporciona:
- Control en tiempo real del inventario
- Alertas automáticas de stock bajo
- Gestión integrada de compras y facturas
- Reportes administrativos detallados
- Interfaz intuitiva por roles de usuario

## Características Principales

### Módulos del Sistema

#### 1. Gestión de Inventario
- Registro y edición de productos
- Control de stock en tiempo real
- Alertas de reabastecimiento automático
- Historial de movimientos completo

#### 2. Gestión de Ventas
- Registro rápido de ventas
- Descuento automático de inventario
- Consulta de disponibilidad instantánea
- Reportes de ventas por período

#### 3. Gestión de Compras
- Generación automática de órdenes de compra
- Seguimiento de entregas
- Control de proveedores
- Integración con facturas

#### 4. Gestión Financiera
- Registro de facturas de proveedores
- Control de estados (pagada/pendiente)
- Reportes financieros mensuales
- Análisis de costos y beneficios

#### 5. Reportes y Análisis
- Reportes de inventario actual
- Análisis de productos más vendidos
- Estadísticas de rotación de stock
- Exportación a múltiples formatos

## Arquitectura del Sistema

### Roles de Usuario
- **Vendedor:** Registro de ventas y consultas de stock
- **Encargado de Almacén:** Control de inventario y entradas
- **Encargado de Compras:** Gestión de órdenes y proveedores
- **Gerente:** Supervisión general y reportes
- **Administrador:** Gestión de usuarios y configuración

### Tecnologías Utilizadas
- **Diagramación:** Lucidchart, Draw.io
- **Prototipado:** Figma
- **Documentación:** Markdown, PDF
- **Base de Datos:** MySQL (diseño relacional)
- **Plataforma:** Windows 10/11 compatible

## Estructura del Proyecto

```
proyecto-final-analisis-diseno-grupo8/
|
|--- docs/
|    |--- hito1/                    # Análisis inicial y requerimientos
|    |--- hito2/                    # Modelado de procesos y datos
|    |--- hito3/                    # Diseño técnico y prototipo
|    |--- hito4/                    # Entrega final y presentación
|
|--- diagramas/
|    |--- casos-de-uso/             # Diagramas UML de casos de uso
|    |--- actividades/              # Diagramas de actividades
|    |--- secuencia/                # Diagramas de secuencia
|    |--- clases/                   # Diagramas de clases
|    |--- mer/                      # Modelo Entidad-Relación
|
|--- prototipo/
|    |--- figma-enlace.txt          # Enlace al prototipo interactivo
|    |--- capturas/                 # Capturas de pantalla del prototipo
|
|--- README.md                      # Este archivo
|--- .gitignore                     # Configuración de Git
|--- enlaces.txt                    # Enlaces a diagramas y recursos
```

## Entregables del Proyecto

### Hito 1: Análisis Inicial (5 pts) - Completado
- [x] Documento de visión del proyecto
- [x] Identificación de stakeholders (8+ identificados)
- [x] Matriz de requerimientos (15 RF + 8 RNF)
- [x] Repositorio GitHub configurado

### Hito 2: Modelado de Procesos y Datos (10 pts) - Completado
- [x] Diagramas UML completos (casos de uso, actividades, secuencia)
- [x] Especificaciones de casos de uso (5+ casos detallados)
- [x] Modelo Entidad-Relación (15+ entidades, 3FN)
- [x] Diccionario de datos completo

### Hito 3: Diseño Técnico y Prototipo (10 pts) - Completado
- [x] Diagramas de estructura (clases, componentes, despliegue)
- [x] Diseño de arquitectura justificado
- [x] Prototipo de interfaz (10+ pantallas)
- [x] Análisis costo-beneficio

### Hito 4: Entrega Final y Presentación (15 pts) - En Progreso
- [ ] Documento técnico completo (25-30 páginas)
- [ ] Todos los diagramas finales
- [ ] Prototipo final interactivo
- [ ] Presentación oral (15 minutos)

## Diagramas del Sistema

### Diagramas UML Disponibles
- **Casos de Uso:** 13 casos principales identificados
- **Actividades:** 11 diagramas de flujo de procesos
- **Secuencia:** 2 diagramas de interacción
- **Clases:** Estructura estática del sistema

### Base de Datos
- **Entidades:** 15+ entidades principales
- **Normalización:** 3FN (Tercera Forma Normal)
- **Script SQL:** Generado automáticamente
- **Diccionario:** Documentación completa de atributos

## Prototipo de Interfaz

El prototipo incluye:
- **10+ pantallas** diseñadas en Figma
- **Flujo de navegación** completo
- **Diseño responsivo** y moderno
- **Experiencia de usuario** optimizada

[Ver prototipo interactivo](prototipo/figma-enlace.txt)

## Instalación y Configuración

### Requisitos del Sistema
- Windows 10/11 (64 bits)
- 4GB RAM mínimo
- 1GB espacio en disco
- MySQL Server 8.0+

### Pasos de Instalación
1. Clonar el repositorio
2. Instalar MySQL Server
3. Ejecutar script SQL para crear base de datos
4. Configurar archivo de conexión
5. Iniciar la aplicación

## Contribución

Este es un proyecto académico desarrollado por el Grupo 8 de la asignatura Análisis y Diseño de Sistemas.

## Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.

## Contacto

- **Facilitador:** Joan Manuel Gregorio Pérez
- **Institución:** Escuela de Ingeniería y Tecnología
- **Trimestre:** Febrero-Abril 2026

---

**Estado del Proyecto:** 90% Completado (Fase de diseño y análisis)

*Última actualización: Abril 2026*