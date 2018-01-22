SELECT DISTINCT "StatID", "SampIDNew", "Analyte", "Matrix", "SubGroup", "Result"
FROM
public."tbl_Samples-Soil-GW" 
INNER JOIN "tbl_Coordinates" on "StatID" = "Stat_ID" 
INNER JOIN "tbl_Analytical-Soil-GW" on "SampID_NEW" = "SampIDNew"
INNER JOIN "tbl_Analytes" on "AnalyteName" = "Analyte"
WHERE "SubGroup" LIKE '%TPH-G%' AND "Matrix" = 'Solid' ORDER BY "Result" DESC;
