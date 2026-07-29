# ============================================================
# HC_RAW DATABASE
# ============================================================

resource "snowflake_database" "this" {
  name    = var.database
  comment = "Raw layer database managed by Terraform. Tables/views/procedures managed by DBT."
}

# ============================================================
# SOURCE/LAYER SCHEMAS (schema only — DBT owns tables/views/procs)
# ============================================================

module "hchb" {
  source = "./HCHB"

  database = snowflake_database.this.name
  schema   = "HCHB"
}

module "ecw" {
  source = "./ECW"

  database = snowflake_database.this.name
  schema   = "ECW"
}

module "wellsky" {
  source = "./WELLSKY"

  database = snowflake_database.this.name
  schema   = "WELLSKY"
}

