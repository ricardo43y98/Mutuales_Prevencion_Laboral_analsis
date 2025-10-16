SELECT 
  'Actividad Economica' as Tipo,
  actividad_economica as Categoria,
  ACHS,
  MUSEG,
  IST,
  ISL
FROM 
`tribal-mapper-463916-m3.datos_us.trabajadores_act`

UNION ALL

-- Participación por Región
SELECT 
  'Region' as Tipo,
  region as Categoria,
  ACHS,
  MUSEG,
  IST,
  ISL
FROM 
  `tribal-mapper-463916-m3.datos_us.trabajadores_reg`
