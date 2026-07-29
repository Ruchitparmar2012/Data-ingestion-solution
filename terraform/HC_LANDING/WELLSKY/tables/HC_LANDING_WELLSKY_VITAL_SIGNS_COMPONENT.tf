resource "snowflake_table" "hc_landing_wellsky_vital_signs_component" {
  database = var.database
  schema   = var.schema
  name     = "VITAL_SIGNS_COMPONENT"

  column {
    name     = "ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "VITAL_ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "CODE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "CODE_DISPLAY"
    type     = "VARCHAR(16777216)"
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
