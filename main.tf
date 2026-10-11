resource "aws_waf_sql_injection_match_set" "waf_sql_injection_match_sets" {
  for_each = var.waf_sql_injection_match_sets

  name = each.value.name

  dynamic "sql_injection_match_tuples" {
    for_each = each.value.sql_injection_match_tuples != null ? each.value.sql_injection_match_tuples : []
    content {
      field_to_match {
        data = sql_injection_match_tuples.value.field_to_match.data
        type = sql_injection_match_tuples.value.field_to_match.type
      }
      text_transformation = sql_injection_match_tuples.value.text_transformation
    }
  }
}

