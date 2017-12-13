SELECT "StatID", "SampID_NEW", "Analyte", "Result", "Matrix"
FROM
public."tbl_Samples-Soil-GW"
INNER JOIN "tbl_Coordinates" on "StatID" = "Stat_ID" 
INNER JOIN "tbl_Analytical-Soil-GW" on "SampID_NEW" = "SampIDNew"
WHERE ("Analyte" = 'Arsenic' AND "Matrix" = 'Aqueous')
