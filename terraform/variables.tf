# ============================================================
# Snowflake Terraform Provider Variables
# ============================================================
# ------------------------------------------------------------
# Snowflake Organization
# ------------------------------------------------------------

variable "snowflake_org" {
  description = "Snowflake organization name"
  type        = string
}


# ------------------------------------------------------------
# Snowflake Account
# ------------------------------------------------------------

variable "snowflake_account" {
  description = "Snowflake account name"
  type        = string
}


# ------------------------------------------------------------
# Snowflake User
# ------------------------------------------------------------

variable "snowflake_user" {
  description = "Snowflake user used by Terraform for authentication"
  type        = string
}


# ------------------------------------------------------------
# Snowflake Private Key
# ------------------------------------------------------------

variable "user_private_key" {
  description = "Path to the RSA private key file used for Snowflake JWT authentication"
  type        = string
  sensitive   = true
}


# ------------------------------------------------------------
# Snowflake Warehouse
# ------------------------------------------------------------

variable "warehouse" {
  description = "Snowflake warehouse used by the Terraform provider"
  type        = string
  default     = "COMPUTE_WH"
}


# ------------------------------------------------------------
# Snowflake Role
# ------------------------------------------------------------

variable "role" {
  description = "Snowflake role used by Terraform"
  type        = string
  default     = "TF_CICD_ROLE"
}



variable "private_key_passphrase" {
  description = "Passphrase for the RSA private key"
  type        = string
  sensitive   = true
  default     = null
}


variable "database" {
  description = "Snowflake database name"
  type        = string
  default     = "HC_LANDING"
}

variable "schema" {
  description = "Snowflake schema name"
  type        = string
}