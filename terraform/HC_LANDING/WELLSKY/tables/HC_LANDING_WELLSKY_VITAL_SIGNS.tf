resource "snowflake_table" "hc_landing_wellsky_vital_signs" {
  database = var.database
  schema   = var.schema
  name     = "VITAL_SIGNS"

  column {
    name     = "ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "IDENTIFIER"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "STATUS"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "CATEGORY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "CODE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "SUBJECT_ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "ENCOUNTER_ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "EFFECTIVEDATETIME"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }

  column {
    name     = "VALUEQUANTITY_VALUE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "VALUEQUANTITY_UNIT"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "CDC_OP"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "CDC_TS"
    type     = "TIMESTAMP_NTZ(9)"
    nullable = true
  }

}
