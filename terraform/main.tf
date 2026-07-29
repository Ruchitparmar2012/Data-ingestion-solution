###############################################################
# HC_LANDING
###############################################################

module "hc_landing" {
  source = "./HC_LANDING"

  providers = {
    snowflake = snowflake
  }

  database = "HC_LANDING"
  schema   = "PUBLIC"
}

###############################################################
# HC_RAW
###############################################################

module "hc_raw" {
  source = "./HC_RAW"

  providers = {
    snowflake = snowflake
  }

  database = "HC_RAW"
  schema   = "PUBLIC"
}

###############################################################
# HC_FUSION
###############################################################

module "hc_fusion" {
  source = "./HC_FUSION"

  providers = {
    snowflake = snowflake
  }

  database = "HC_FUSION"
  schema   = "PUBLIC"
}

###############################################################
# HC_CONSUMPTION
###############################################################

module "hc_consumption" {
  source = "./HC_CONSUMPTION"

  providers = {
    snowflake = snowflake
  }

  database = "HC_CONSUMPTION"
  schema   = "PUBLIC"
}