resource "snowflake_table" "hc_landing_hchb_emp" {
  database = var.database
  schema   = var.schema
  name     = "EMP"

  column {
    name = "EMP_ID"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "EMP_NAME"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "EMP_DEPT"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "EMP_SALARY"
    type = "NUMBER(38,0)"
  }

  column {
    name = "EMP_HIRE_DATE"
    type = "DATE"
  }

  column {
    name = "UPDATED_DATE"
    type = "DATE"
  }
}
