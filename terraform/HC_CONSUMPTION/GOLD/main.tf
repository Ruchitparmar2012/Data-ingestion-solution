# ============================================================
# GOLD SCHEMA
# ============================================================

resource "snowflake_schema" "this" {
  database = var.database
  name     = var.schema

  comment = "GOLD schema managed by Terraform. Tables/views/procedures managed by DBT."
}

# ============================================================
# CHILD OBJECT MODULES
# ============================================================
# Tables, views, procedures, and streams inside this schema are owned
# and deployed by DBT, not Terraform. Left commented for reference,
# in case Terraform ever needs to take ownership of a specific object.

# module "tables" {
#   source = "./tables"
#
#   database = var.database
#   schema   = snowflake_schema.this.name
# }

# module "views" {
#   source = "./views"
#
#   database = var.database
#   schema   = snowflake_schema.this.name
# }

# module "procedures" {
#   source = "./procedures"
#
#   database = var.database
#   schema   = snowflake_schema.this.name
# }

# module "streams" {
#   source = "./streams"
#
#   database = var.database
#   schema   = snowflake_schema.this.name
# }
