data "datadog_powerpack" "powerpack_lookup" {
  for_each = var.powerpack_lookup

  name = each.value.name
}

