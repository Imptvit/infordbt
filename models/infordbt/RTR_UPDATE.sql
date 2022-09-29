{{
  config(
    materialized='run_custom_sql'
  )
}}
select * from {{ref('RTR_TEST_UPDATE_1_0')}};
{{ unload_to_s3('RTR_TEST_UPDATE_1_0') }}