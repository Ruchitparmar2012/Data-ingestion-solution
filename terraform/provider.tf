terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "2.18.0"
      # version = "2.14.1"
    }
  }

  required_version = ">= 1.5.0"
}



provider "snowflake" {
  organization_name      = var.snowflake_org
  account_name           = var.snowflake_account
  user                   = var.snowflake_user
  private_key            = file(var.user_private_key)
  private_key_passphrase = var.private_key_passphrase
  authenticator          = "SNOWFLAKE_JWT"
  warehouse              = var.warehouse
  role                   = var.role

  # preview_features_enabled = ["snowflake_table_resource"]

  preview_features_enabled = [
    "snowflake_function_python_resource",
    "snowflake_function_sql_resource",
    "snowflake_procedure_python_resource",
    "snowflake_procedure_sql_resource",
    "snowflake_table_resource",
    "snowflake_stage_resource",
    "snowflake_file_format_resource",
    "snowflake_network_rule_resource",
    "snowflake_authentication_policy_resource",
    "snowflake_network_policy_attachment_resource",
    "snowflake_account_authentication_policy_attachment_resource",
    "snowflake_network_policy_attachment_resource",
    "snowflake_database_role_datasource",
    "snowflake_storage_integration_resource",
    "snowflake_storage_integrations_datasource",
    "snowflake_storage_integrations_datasource",
    "snowflake_authentication_policies_datasource",
    "snowflake_user_authentication_policy_attachment_resource",
    "snowflake_table_constraint_resource",
  ]

}