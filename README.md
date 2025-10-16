# 🎯 Análisis de Accidentes Laborales en Chile - Portfolio BI & Data Science

<div align="center">

![BI](https://img.shields.io/badge/Business-Intelligence-yellow?style=for-the-badge)
![Data Science](https://img.shields.io/badge/Data-Science-blue?style=for-the-badge)
![BigQuery](https://img.shields.io/badge/Google-BigQuery-orange?style=for-the-badge&logo=googlecloud)
![SQL](https://img.shields.io/badge/SQL-Advanced-green?style=for-the-badge&logo=mysql)

[🔗 **Ver Dashboard Interactivo**](https://lookerstudio.google.com/reporting/754282d4-112e-4edc-bbe9-1b53f47dc231)

</div>

## 📋 Resumen del Proyecto

Análisis integral de datos de accidentes laborales en Chile para identificar patrones de siniestralidad, distribución geográfica y desempeño de mutualidades. El proyecto combina técnicas de **Business Intelligence** para reporting ejecutivo y **análisis de datos** para insights estratégicos.

## 🎯 Objetivos del Proyecto

### 🎯 Business Intelligence
- Desarrollar dashboard ejecutivo para toma de decisiones
- Crear sistema de reporting automatizado
- Establecer KPIs de seguridad laboral
- Facilitar análisis comparativo entre mutuales

### 🔬 Análisis de Datos
- Identificar patrones geográficos de accidentabilidad
- Analizar segmentación por actividad económica
- Evaluar performance de mutuales por región
- Detectar tendencias temporales (2024-2025)

## 🛠️ Stack Tecnológico Implementado

### 💾 Base de Datos & ETL
- **Google BigQuery** - Almacenamiento y procesamiento
- **SQL Avanzado** - Transformación y consultas
- **Modelo Dimensional** - Arquitectura Kimball

### 📊 Visualización & Reporting
- **Looker Studio** - Dashboard interactivo
- **Google Cloud Platform** - Infraestructura cloud

### 🔍 Análisis
- **SQL Analítico** - Agregaciones y segmentaciones
- **Análisis Exploratorio** - Patrones y correlaciones

## 📊 Lo Que Implementé

### ✅ Completado - Business Intelligence
- **Modelado Dimensional** en BigQuery
- **ETL con SQL** para transformación de datos
- **Dashboard Executivo** en Looker Studio
- **KPIs de Seguridad Laboral**
- **Sistema de Reporting** automatizado

### ✅ Completado - Análisis de Datos
- **Análisis Geográfico** por regiones
- **Segmentación por Actividad Económica** (CIIU)
- **Análisis Comparativo** entre mutuales
- **Tendencias Temporales** 2024-2025
- **Market Share Analysis** por segmentos

## 🗃️ Arquitectura de Datos Implementada

### Esquema Dimensional (Star Schema)
```sql
-- Tablas de Hechos
hecho_accidentes {
    total_accidentes, total_mujeres, total_hombres,
    mutual_id, region_id, actividad_id, tiempo_id
}

-- Dimensiones
dim_region {region_id, nombre_region}
dim_actividad {actividad_id, nombre_actividad}  
dim_mutual {mutual_id, nombre_mutual}
dim_tiempo {tiempo_id, periodo, año, mes}
