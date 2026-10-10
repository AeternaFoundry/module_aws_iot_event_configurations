variable "iot_event_configurations" {
  description = <<EOT
Map of iot_event_configurations, attributes below
Required:
    - event_configurations
Optional:
    - region
EOT

  type = map(object({
    event_configurations = map(bool)
    region               = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

