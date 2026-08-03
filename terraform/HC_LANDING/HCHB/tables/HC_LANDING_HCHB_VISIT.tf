resource "snowflake_table" "HC_LANDING_HCHB_VISIT" { 
  database = var.database
  schema   = var.schema
  name     = "VISIT"

  column {
    name = "VISIT_ID"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "PATIENT_ID"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "VISIT_DATE"
    type = "DATE"
  }

  column {
    name = "VISIT_TYPE"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "PROVIDER_ID"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "VISIT_STATUS"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "UPDATED_DATE"
    type = "DATE"
  }
}
