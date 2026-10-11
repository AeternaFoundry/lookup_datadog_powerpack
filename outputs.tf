output "powerpack_lookup_id" {
  description = "Map of id values across all powerpack_lookup, keyed the same as var.powerpack_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_powerpack.powerpack_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "powerpack_lookup_name" {
  description = "Map of name values across all powerpack_lookup, keyed the same as var.powerpack_lookup except keys with no name are omitted"
  value       = { for k, v in data.datadog_powerpack.powerpack_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

