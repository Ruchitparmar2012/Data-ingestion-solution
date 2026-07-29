# ============================================================
# HC_LANDING DATABASE
# ============================================================

resource "snowflake_database" "this" {
  name    = var.database
  comment = "Landing database managed by Terraform"
}

# ============================================================
# WELLSKY SCHEMA (and everything under it: tables/views/procs/streams)
# ============================================================

module "hchb" {
  source = "./HCHB"

  database = snowflake_database.this.name
  schema   = "HCHB"
}

module "wellsky" {
  source = "./WELLSKY"

  database = snowflake_database.this.name
  schema   = "WELLSKY"
}