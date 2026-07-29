# ============================================================
# Snowflake Terraform Local Variables
# ============================================================
#
# Purpose:
# Define reusable values used across Terraform resources.
#
# Locals help:
#   - Avoid repeating values
#   - Maintain naming standards
#   - Keep environment configuration consistent
#   - Simplify Terraform resource definitions
#
# ============================================================


locals {

  # ----------------------------------------------------------
  # Environment Configuration
  # ----------------------------------------------------------

  environment = "DEV"


  # ----------------------------------------------------------
  # Project Configuration
  # ----------------------------------------------------------

  project_name = "DATA_INGESTION_SOLUTION_UAT"

  project_short_name = "DIS"


  # ----------------------------------------------------------
  # Naming Convention
  # ----------------------------------------------------------
  #
  # Example:
  #   DIS_DEV
  #
  # Used as a common prefix for Snowflake objects.
  #

  name_prefix = upper(
    "${local.project_short_name}_${local.environment}"
  )


  # ----------------------------------------------------------
  # Snowflake Database Names
  # ----------------------------------------------------------

  database_names = {
    bronze = "${local.name_prefix}_BRONZE"
    silver = "${local.name_prefix}_SILVER"
    gold   = "${local.name_prefix}_GOLD"
  }


  # ----------------------------------------------------------
  # Snowflake Schema Names
  # ----------------------------------------------------------

  schema_names = {
    bronze = "BRONZE"
    silver = "SILVER"
    gold   = "GOLD"
  }


  # ----------------------------------------------------------
  # Snowflake Warehouse Names
  # ----------------------------------------------------------

  warehouse_names = {
    terraform = "${local.name_prefix}_TERRAFORM_WH"
    dbt       = "${local.name_prefix}_DBT_WH"
    ingestion = "${local.name_prefix}_INGESTION_WH"
  }


  # ----------------------------------------------------------
  # Snowflake Role Names
  # ----------------------------------------------------------

  role_names = {
    terraform = "${local.name_prefix}_TERRAFORM_ROLE"
    dbt       = "${local.name_prefix}_DBT_ROLE"
    ingestion = "${local.name_prefix}_INGESTION_ROLE"
    readonly  = "${local.name_prefix}_READONLY_ROLE"
  }


  # ----------------------------------------------------------
  # Snowflake Stage Names
  # ----------------------------------------------------------

  stage_names = {
    raw       = "${local.name_prefix}_RAW_STAGE"
    processed = "${local.name_prefix}_PROCESSED_STAGE"
  }


  # ----------------------------------------------------------
  # Snowflake File Format Names
  # ----------------------------------------------------------

  file_format_names = {
    csv     = "${local.name_prefix}_CSV_FORMAT"
    json    = "${local.name_prefix}_JSON_FORMAT"
    parquet = "${local.name_prefix}_PARQUET_FORMAT"
  }


  # ----------------------------------------------------------
  # dbt Configuration
  # ----------------------------------------------------------

  dbt = {
    project_name = "oms_dbt_proj"
    target       = lower(local.environment)

    bronze_schema = local.schema_names.bronze
    silver_schema = local.schema_names.silver
    gold_schema   = local.schema_names.gold

    warehouse = local.warehouse_names.dbt
    role      = local.role_names.dbt
  }


  # ----------------------------------------------------------
  # Snowflake Object Comments
  # ----------------------------------------------------------

  comments = {
    bronze_database = "Bronze layer database managed by Terraform"
    silver_database = "Silver layer database managed by Terraform"
    gold_database   = "Gold layer database managed by Terraform"

    terraform_warehouse = "Warehouse used for Terraform deployments"
    dbt_warehouse       = "Warehouse used for dbt transformations"
    ingestion_warehouse = "Warehouse used for data ingestion workloads"
  }


  # ----------------------------------------------------------
  # Common Resource Tags
  # ----------------------------------------------------------

  common_tags = {
    environment = local.environment
    project     = local.project_name
    managed_by  = "TERRAFORM"
    data_layer  = "MEDALLION_ARCHITECTURE"
  }


  # ----------------------------------------------------------
  # Standard Snowflake Naming Convention
  # ----------------------------------------------------------
  #
  # Naming Examples:
  #
  # Database:
  #   DIS_DEV_BRONZE
  #
  # Warehouse:
  #   DIS_DEV_DBT_WH
  #
  # Role:
  #   DIS_DEV_DBT_ROLE
  #
  # Stage:
  #   DIS_DEV_RAW_STAGE
  #
  # File Format:
  #   DIS_DEV_CSV_FORMAT
  #
  # ----------------------------------------------------------

}

