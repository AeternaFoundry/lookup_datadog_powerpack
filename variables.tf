variable "powerpack_lookup" {
  description = <<EOT
Map of powerpack_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
}

