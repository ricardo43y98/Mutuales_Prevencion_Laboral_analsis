-- Dimensión Región
CREATE OR REPLACE TABLE `tribal-mapper-463916-m3.datos_us.dim_region` AS
SELECT 
  GENERATE_UUID() as region_id,
  nombre_region
FROM (
  SELECT DISTINCT Region as nombre_region
  FROM `tribal-mapper-463916-m3.datos_us.vista_analisis_accidentes`
  WHERE Region IS NOT NULL
);

-- Dimensión Actividad Económica
CREATE OR REPLACE TABLE `tribal-mapper-463916-m3.datos_us.dim_actividad` AS
SELECT 
  GENERATE_UUID() as actividad_id,
  nombre_actividad
FROM (
  SELECT DISTINCT Actividad_Economica as nombre_actividad
  FROM `tribal-mapper-463916-m3.datos_us.vista_analisis_accidentes`
  WHERE Actividad_Economica IS NOT NULL
);

-- Dimensión Mutual
CREATE OR REPLACE TABLE `tribal-mapper-463916-m3.datos_us.dim_mutual` AS
SELECT 
  GENERATE_UUID() as mutual_id,
  nombre_mutual
FROM (
  SELECT DISTINCT Mutual as nombre_mutual
  FROM `tribal-mapper-463916-m3.datos_us.vista_analisis_accidentes`
  WHERE Mutual IS NOT NULL
);

-- Dimensión Tiempo
CREATE OR REPLACE TABLE `tribal-mapper-463916-m3.datos_us.dim_tiempo` AS
SELECT 
  GENERATE_UUID() as tiempo_id,
  Periodo,
  año,
  mes
FROM (
  SELECT DISTINCT 
    Periodo,
    EXTRACT(YEAR FROM PARSE_DATE('%Y-%m', Periodo)) as año,
    EXTRACT(MONTH FROM PARSE_DATE('%Y-%m', Periodo)) as mes
  FROM `tribal-mapper-463916-m3.datos_us.vista_analisis_accidentes`
  WHERE Periodo IS NOT NULL
);
