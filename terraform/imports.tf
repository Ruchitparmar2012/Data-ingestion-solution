###############################################################
# DATABASES
###############################################################

import {
  to = module.hc_raw.snowflake_database.this
  id = "HC_RAW"
}

import {
  to = module.hc_fusion.snowflake_database.this
  id = "HC_FUSION"
}

import {
  to = module.hc_landing.snowflake_database.this
  id = "HC_LANDING"
}

import {
  to = module.hc_consumption.snowflake_database.this
  id = "HC_CONSUMPTION"
}

###############################################################
# HC_RAW SCHEMAS
###############################################################

import {
  to = module.hc_raw.module.hchb.snowflake_schema.this
  id = "HC_RAW.HCHB"
}

import {
  to = module.hc_raw.module.ecw.snowflake_schema.this
  id = "HC_RAW.ECW"
}

import {
  to = module.hc_raw.module.wellsky.snowflake_schema.this
  id = "HC_RAW.WELLSKY"
}

###############################################################
# HC_LANDING SCHEMAS
###############################################################

import {
  to = module.hc_landing.module.hchb.snowflake_schema.this
  id = "HC_LANDING.HCHB"
}

import {
  to = module.hc_landing.module.wellsky.snowflake_schema.this
  id = "HC_LANDING.WELLSKY"
}

###############################################################
# HC_FUSION SCHEMAS
###############################################################

import {
  to = module.hc_fusion.module.stg_silver.snowflake_schema.this
  id = "HC_FUSION.STG_SILVER"
}

import {
  to = module.hc_fusion.module.standardized.snowflake_schema.this
  id = "HC_FUSION.STANDARDIZED"
}

import {
  to = module.hc_fusion.module.silver.snowflake_schema.this
  id = "HC_FUSION.SILVER"
}

import {
  to = module.hc_fusion.module.integration.snowflake_schema.this
  id = "HC_FUSION.INTEGRATION"
}

###############################################################
# HC_CONSUMPTION SCHEMAS
###############################################################

import {
  to = module.hc_consumption.module.ai_ml.snowflake_schema.this
  id = "HC_CONSUMPTION.AI_ML"
}

import {
  to = module.hc_consumption.module.gold.snowflake_schema.this
  id = "HC_CONSUMPTION.GOLD"
}

import {
  to = module.hc_consumption.module.marts.snowflake_schema.this
  id = "HC_CONSUMPTION.MARTS"
}