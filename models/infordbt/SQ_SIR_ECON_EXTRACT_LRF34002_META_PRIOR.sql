SELECT seq1.nextval as UNIQUE_ID,
Cast ( trim("documentdatametainfo_payloadgroup_payloadinfo_payloadfilemetainfo_recordcoun" ) as DECIMAL(10,0)) as documentdatametainfo_payloadgroup_payloadinfo_payloadfilemetainfo_recordcoun 
FROM {{ ref('SIR_ECON_EXTRACT_LRF34002_META_PRIOR_0') }}