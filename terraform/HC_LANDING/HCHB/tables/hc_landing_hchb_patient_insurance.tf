resource "snowflake_table" "hc_landing_hchb_patient_insurance" {
  database = var.database
  schema   = var.schema
  name     = "PATIENT_INSURANCE"

  column {
    name     = "PATIENT_INSURANCE_ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "PATIENT_ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "INSURANCE_ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "POLICY_NUMBER"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "START_DATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "END_DATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "IS_PRIMARY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "INSERTED_DATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "UPDATED_DATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }
}
