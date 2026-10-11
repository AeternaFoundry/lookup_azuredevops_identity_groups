variable "identity_groups_lookup" {
  description = <<EOT
Map of identity_groups_lookup, attributes below
Optional:
    - project_id
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    project_id = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.identity_groups_lookup : (
        v.project_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

