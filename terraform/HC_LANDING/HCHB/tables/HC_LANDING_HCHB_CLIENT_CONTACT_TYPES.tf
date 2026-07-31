resource "snowflake_table" "hc_landing_hchb_client_contact_types" {
  database = var.database
  schema   = var.schema
  name     = "CLIENT_CONTACT_TYPES"

  column {
    name = "CCT_ID"
    type = "NUMBER(38,0)"
  }

  column {
    name = "CCT_DESC"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "CCT_ACTIVE"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "CCT_REQUIRED"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "CCT_INSERTDATE"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "CCT_LASTUPDATE"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "_CDC_OP"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "_CDC_TS"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "INSERTED_DATE"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "INSERTED_BY"
    type = "VARCHAR(16777216)"
  }

  column {
    name = "UPDATED_DATE"
    type = "VARCHAR(16777216)"
  }
}
