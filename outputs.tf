output "identity_groups_lookup_id" {
  description = "Map of id values across all identity_groups_lookup, keyed the same as var.identity_groups_lookup"
  value       = { for k, v in data.azuredevops_identity_groups.identity_groups_lookup : k => v.id }
}
output "identity_groups_lookup_groups" {
  description = "Map of groups values across all identity_groups_lookup, keyed the same as var.identity_groups_lookup"
  value       = { for k, v in data.azuredevops_identity_groups.identity_groups_lookup : k => v.groups }
}
output "identity_groups_lookup_project_id" {
  description = "Map of project_id values across all identity_groups_lookup, keyed the same as var.identity_groups_lookup"
  value       = { for k, v in data.azuredevops_identity_groups.identity_groups_lookup : k => v.project_id }
}

