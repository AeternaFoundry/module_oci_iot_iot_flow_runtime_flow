output "iot_iot_flow_runtime_flows_id" {
  description = "Map of id values across all iot_iot_flow_runtime_flows, keyed the same as var.iot_iot_flow_runtime_flows except keys with no id are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime_flow.iot_iot_flow_runtime_flows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_iot_flow_runtime_flows_flows_document" {
  description = "Map of flows_document values across all iot_iot_flow_runtime_flows, keyed the same as var.iot_iot_flow_runtime_flows except keys with no flows_document are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime_flow.iot_iot_flow_runtime_flows : k => v.flows_document if v.flows_document != null && length(v.flows_document) > 0 }
}
output "iot_iot_flow_runtime_flows_iot_flow_runtime_id" {
  description = "Map of iot_flow_runtime_id values across all iot_iot_flow_runtime_flows, keyed the same as var.iot_iot_flow_runtime_flows except keys with no iot_flow_runtime_id are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime_flow.iot_iot_flow_runtime_flows : k => v.iot_flow_runtime_id if v.iot_flow_runtime_id != null && length(v.iot_flow_runtime_id) > 0 }
}

