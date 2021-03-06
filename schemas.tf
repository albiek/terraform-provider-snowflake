locals {
  schemas = {
    "RAW" = {
      database = "PROD"
      comment = "contains raw data from our source systems"
    }
    "ANALYTICS" = {
      database = "PROD"
      comment = "contains tables and views accessible to analysts and reporting"
    }
  }
}

resource "snowflake_schema" "schema" {
  for_each = local.schemas
  name     = each.key
  database = each.value.database
  comment  = each.value.comment
}
