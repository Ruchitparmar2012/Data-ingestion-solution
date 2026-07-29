resource "snowflake_table" "hc_landing_hchb_facilities" {
  database = var.database
  schema   = var.schema
  name     = "FACILITIES"

  column {
    name     = "FA_ID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "FA_NAME"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_TYPE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_ADDRESS"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_CITY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_STATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_ZIP"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_PHONE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_FAX"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_NPI"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_BEDS"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "FA_ACTIVE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_INSERTDATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_LASTUPDATE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_COMMENT"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_EIN"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_FAXVISITNOTE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_GLCODE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_HOSPICEINPATIENTENCOUNTERS"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_INCLUDEONCLAIMS"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_INPATIENTFACILITY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_LATITUDE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "FA_LATLONGMETHOD"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_LIMITSMARTSCHEDULING"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_LONGITUDE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "FA_MEDICAIDNUMBER"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_OUTPATIENTTREATMENTPROVIDER"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_PARENTCOMPANY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_PMID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "FA_REFERRINGFACILITY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_RFTID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "FA_ROOMANDBOARDRATE"
    type     = "FLOAT"
    nullable = true
  }

  column {
    name     = "FA_RRTID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "FA_SSN"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_STAFFINGFACILITY"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_STREET"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_TELEPHONE"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_VNWEB"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_WEBACCESS"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_ADDRESSMAPPED"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_DSMADDRESS"
    type     = "VARCHAR(16777216)"
    nullable = true
  }

  column {
    name     = "FA_DSMNETWORK"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "FA_FOCID"
    type     = "NUMBER(38,0)"
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
