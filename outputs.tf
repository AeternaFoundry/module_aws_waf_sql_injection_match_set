output "waf_sql_injection_match_sets_id" {
  description = "Map of id values across all waf_sql_injection_match_sets, keyed the same as var.waf_sql_injection_match_sets"
  value       = { for k, v in aws_waf_sql_injection_match_set.waf_sql_injection_match_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waf_sql_injection_match_sets_arn" {
  description = "Map of arn values across all waf_sql_injection_match_sets, keyed the same as var.waf_sql_injection_match_sets"
  value       = { for k, v in aws_waf_sql_injection_match_set.waf_sql_injection_match_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "waf_sql_injection_match_sets_name" {
  description = "Map of name values across all waf_sql_injection_match_sets, keyed the same as var.waf_sql_injection_match_sets"
  value       = { for k, v in aws_waf_sql_injection_match_set.waf_sql_injection_match_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "waf_sql_injection_match_sets_sql_injection_match_tuples" {
  description = "Map of sql_injection_match_tuples values across all waf_sql_injection_match_sets, keyed the same as var.waf_sql_injection_match_sets"
  value       = { for k, v in aws_waf_sql_injection_match_set.waf_sql_injection_match_sets : k => v.sql_injection_match_tuples if v.sql_injection_match_tuples != null && length(v.sql_injection_match_tuples) > 0 }
}

