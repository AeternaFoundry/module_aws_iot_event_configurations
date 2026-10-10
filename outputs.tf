output "iot_event_configurations_id" {
  description = "Map of id values across all iot_event_configurations, keyed the same as var.iot_event_configurations"
  value       = { for k, v in aws_iot_event_configurations.iot_event_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_event_configurations_event_configurations" {
  description = "Map of event_configurations values across all iot_event_configurations, keyed the same as var.iot_event_configurations"
  value       = { for k, v in aws_iot_event_configurations.iot_event_configurations : k => v.event_configurations if v.event_configurations != null && length(v.event_configurations) > 0 }
}
output "iot_event_configurations_region" {
  description = "Map of region values across all iot_event_configurations, keyed the same as var.iot_event_configurations"
  value       = { for k, v in aws_iot_event_configurations.iot_event_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

