output "identity_groups_lookup_id" {
  description = "Map of id values across all identity_groups_lookup, keyed the same as var.identity_groups_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_identity_groups.identity_groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_groups_lookup_groups" {
  description = "Map of groups values across all identity_groups_lookup, keyed the same as var.identity_groups_lookup except keys with no groups are omitted"
  value       = { for k, v in data.azuredevops_identity_groups.identity_groups_lookup : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "identity_groups_lookup_project_id" {
  description = "Map of project_id values across all identity_groups_lookup, keyed the same as var.identity_groups_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_identity_groups.identity_groups_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

