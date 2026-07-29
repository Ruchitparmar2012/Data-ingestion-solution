# ============================================================
# HCHB SCHEMA
# ============================================================

resource "snowflake_schema" "this" {
  database = var.database
  name     = var.schema

  comment = "HCHB landing schema managed by Terraform"
}

# ============================================================
# CHILD OBJECT MODULES
# ============================================================

module "tables" {
  source = "./tables"

  database = var.database
  schema   = snowflake_schema.this.name
}

# module "views" {
#   source = "./views"

#   database = var.database
#   schema   = snowflake_schema.this.name
# }

# module "procedures" {
#   source = "./procedures"

#   database = var.database
#   schema   = snowflake_schema.this.name
# }

# module "streams" {
#   source = "./streams"

#   database = var.database
#   schema   = snowflake_schema.this.name
# }