# ============================================================
# HC_CONSUMPTION DATABASE
# ============================================================

resource "snowflake_database" "this" {
  name    = var.database
  comment = "Consumption layer database managed by Terraform. Tables/views/procedures managed by DBT."
}

# ============================================================
# SOURCE/LAYER SCHEMAS (schema only — DBT owns tables/views/procs)
# ============================================================

module "gold" {
  source = "./GOLD"

  database = snowflake_database.this.name
  schema   = "GOLD"
}

module "ai_ml" {
  source = "./AI_ML"

  database = snowflake_database.this.name
  schema   = "AI_ML"
}

module "marts" {
  source = "./MARTS"

  database = snowflake_database.this.name
  schema   = "MARTS"
}

