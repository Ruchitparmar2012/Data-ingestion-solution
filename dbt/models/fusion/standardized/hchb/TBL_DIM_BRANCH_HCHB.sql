{{
    config(
        materialized='table',
        alias='TBL_DIM_BRANCH_HCHB'
    )
}}

SELECT
    MD5(CONCAT('HCHB', BRANCH_CODE))                      AS BRANCH_KEY,
    1                                                      AS SOURCE_SYSTEM_ID,
    MD5(CONCAT('HCHB', SPLIT_PART(BRANCH_ZIP, '-', 1)))    AS GEOGRAPHY_KEY,
    BRANCH_CODE,
    BRANCH_NAME,
    BRANCH_PARENT                                          AS PARENT_BRANCH_KEY,
    BRANCH_PARENT                                          AS PARENT_BRANCH,
    BRANCH_STREET                                          AS ADDRESS,
    BRANCH_CITY                                             AS CITY,
    BRANCH_COUNTY                                           AS COUNTY,
    BRANCH_STATE                                            AS STATE,
    BRANCH_ZIP                                              AS ZIP_CODE,
    BRANCH_LATITUDE::FLOAT                                  AS LATITUDE,
    BRANCH_LONGITUDE::FLOAT                                 AS LONGITUDE,
    BRANCH_FAX                                              AS FAX,
    BRANCH_EMAIL                                            AS EMAIL,
    BRANCH_PHONE                                            AS PHONE,
    BRANCH_ACTIVE::BOOLEAN                                  AS IS_ACTIVE,
    BRANCH_BRANCHGL                                         AS BRANCH_GL_NUMBER,
    CURRENT_TIMESTAMP()::TIMESTAMP_NTZ                      AS INSERTED_DATE,
    CURRENT_USER()                                          AS INSERTED_BY,
    CURRENT_TIMESTAMP()::TIMESTAMP_NTZ                      AS UPDATED_DATE,
    CURRENT_USER()                                          AS UPDATED_BY
FROM {{ source('STG_SILVER_HCHB', 'HCHB_BRANCHES_CLEANSED') }}