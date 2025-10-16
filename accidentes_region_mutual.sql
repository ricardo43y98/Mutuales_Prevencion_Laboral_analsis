SELECT 
  t.total_accidentes,
    m.nombre_mutual,
    a.nombre_actividad,
    reg.nombre_region,
    t.Parte_cuerpo,
    t.empleados
FROM tribal-mapper-463916-m3.datos_us.hecho_accidentes t
LEFT JOIN tribal-mapper-463916-m3.datos_us.dim_mutual  m ON t.mutual_id = m.mutual_id  

LEFT JOIN tribal-mapper-463916-m3.datos_us.dim_actividad a ON t.actividad_id = a.actividad_id

LEFT JOIN tribal-mapper-463916-m3.datos_us.dim_region reg on t.region_id = reg.region_id
