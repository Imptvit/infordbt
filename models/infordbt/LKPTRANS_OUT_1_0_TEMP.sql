SELECT 
   t.$1 AS "Field_Name",
   t.$2 AS "Field_Value"
FROM @INPUT_STAGE/econsop03_validity.csv t;