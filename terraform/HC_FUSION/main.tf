# ============================================================
# HC_FUSION DATABASE
# ============================================================

resource "snowflake_database" "this" {
  name    = var.database
  comment = "Fusion/transform layer database managed by Terraform. Tables/views/procedures managed by DBT."
}

# ============================================================
# SOURCE/LAYER SCHEMAS (schema only — DBT owns tables/views/procs)
# ============================================================

module "standardized" {
  source = "./STANDARDIZED"

  database = snowflake_database.this.name
  schema   = "STANDARDIZED"
}

module "stg_silver" {
  source = "./STG_SILVER"

  database = snowflake_database.this.name
  schema   = "STG_SILVER"
}

module "silver" {
  source = "./SILVER"

  database = snowflake_database.this.name
  schema   = "SILVER"
}

module "integration" {
  source = "./INTEGRATION"

  database = snowflake_database.this.name
  schema   = "INTEGRATION"
}

