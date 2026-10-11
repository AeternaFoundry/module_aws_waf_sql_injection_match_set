variable "waf_sql_injection_match_sets" {
  description = <<EOT
Map of waf_sql_injection_match_sets, attributes below
Required:
    - name
Optional:
    - sql_injection_match_tuples (block):
        - field_to_match (required, block):
            - data (optional)
            - type (required)
        - text_transformation (required)
EOT

  type = map(object({
    name = string
    sql_injection_match_tuples = optional(list(object({
      field_to_match = object({
        data = optional(string)
        type = string
      })
      text_transformation = string
    })))
  }))
}

