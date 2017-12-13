SELECT DISTINCT "StatID", "X", "Y", "SampIDNew", "Analyte" 
FROM
public."tbl_Samples-Soil-GW"
INNER JOIN "tbl_Coordinates" on "StatID" = "Stat_ID" 
INNER JOIN "tbl_Analytical-Soil-GW" on "SampID_NEW" = "SampIDNew"
WHERE "Analyte" LIKE '%Naph%'; 