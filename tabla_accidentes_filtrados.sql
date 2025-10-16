SELECT
  `Región` as Region,
  `Actividad Económica CIIU` as Actividad_Economica,
  Periodo,
  `Organismo Administrador` as Mutual,
  `Agente del accidente` as Agente_Accidente,
  `Forma del accidente` as Forma_Accidente,
  `Parte del cuerpo` as Parte_Cuerpo,`Tamaño de empresa` as empleados,
  -- Totales por género y general
  SUM(Mujer) as Total_Mujeres,
  SUM(Hombre) as Total_Hombres,
  SUM(`Sin información`) as Total_Sin_Informacion,
  SUM(Total) as Total_Accidentes
FROM
  `tribal-mapper-463916-m3.datos_us.accidentes_trayecto_2024_2025`
WHERE
Periodo LIKE '2024-%' OR Periodo LIKE '2025-%'-- Filtramos solo los años de interés
GROUP BY
  Region, Actividad_Economica, Periodo, Mutual, Agente_Accidente, Forma_Accidente, Parte_Cuerpo,empleados
