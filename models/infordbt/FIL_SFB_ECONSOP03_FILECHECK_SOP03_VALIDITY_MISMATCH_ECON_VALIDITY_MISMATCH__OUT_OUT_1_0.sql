SELECT 
in0.UNIQUE_ID,
in0.sop03_file_count AS sop03_file_count,
in0.sop03_meta_count AS sop03_meta_count,
in0.econ_file_count AS econ_file_count,
in0.econ_meta_count AS econ_meta_count,
in0.sop03_validity AS sop03_validity,
in0.econ_validity AS econ_validity,
in0.Name_econ_file_count AS Name_econ_file_count,
in0.Name_econ_meta_count AS Name_econ_meta_count,
in0.Name_econ_validity AS Name_econ_validity,
in0.Name_Dash AS Name_Dash,
in0.Name_sop03_file_count AS Name_sop03_file_count,
in0.Name_sop03_meta_count AS Name_sop03_meta_count,
in0.Name_sop03_validity AS Name_sop03_validity 
FROM {{ ref ('EXPTRANS_OUT_1_0') }} AS in0 
WHERE in0.sop03_validity = 'MISMATCH'  OR in0.econ_validity = 'MISMATCH' 