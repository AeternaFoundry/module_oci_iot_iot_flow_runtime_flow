variable "iot_iot_flow_runtime_flows" {
  description = <<EOT
Map of iot_iot_flow_runtime_flows, attributes below
Required:
    - flows_document
    - iot_flow_runtime_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    flows_document      = string
    iot_flow_runtime_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_iot_flow_runtime_flows : (
        can(jsondecode(v.flows_document))
      )
    ])
    error_message = "must be valid JSON"
  }
}

