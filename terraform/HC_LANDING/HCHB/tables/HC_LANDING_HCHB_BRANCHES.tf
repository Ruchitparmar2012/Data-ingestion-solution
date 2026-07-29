resource "snowflake_table" "hc_landing_hchb_branches" {
  database = var.database
  schema   = var.schema
  name     = "BRANCHES"

  column {
    name     = "BRANCH_CODE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_NAME"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_STATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_CITY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_ZIP"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_PHONE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_PARENTCODE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_FRIENDLYNAME"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_ACTIVE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_COUNTRY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_INSERTDATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_LASTUPDATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_BRANCHGL"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_CONTACT"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_CORPOFFICE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_EMAIL"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_FAX"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_FEDERALTAXID"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_HOSSTATELICENSE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_IDENTITY"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_INCLUDEINALL"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_INCLUDEONPHYSICIANWEBSITE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_LATITUDE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "BRANCH_LATLONGMETHOD"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_LONGITUDE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "BRANCH_PARENT"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_PROVIDERNUMBER"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_REGID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_RESOURCEID"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_SCHEDULINGPHONE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_SMSHELPPHONE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_STATELICENSE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_STREET"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_ADDRESSMAPPED"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_COUNTY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_FEDERALID"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_HHMEDICAREEXPECTEDGMLUPA"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_HHMEDICAREEXPECTEDGMOUTLIER"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_HHMEDICAREEXPECTEDGMSTANDARD"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_HHMEDICAREEXPECTEDGMTHERAPY"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_ISHOSPICEINPATIENTUNIT"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_MCCM"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_MEDALOGIXBACKOFFICEINTEGRATION"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_PAYROLLCODE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_PAYROLLCODE2"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_REMITTANCEID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_RSLID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_SILENTGPSATPCVISITEND"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_SILENTGPSATPCVISITSTART"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "BRANCH_TZID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "BRANCH_WEBADDRESS"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "_CDC_OP"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "_CDC_TS"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "INSERTED_DATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "INSERTED_BY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "UPDATED_DATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

}
