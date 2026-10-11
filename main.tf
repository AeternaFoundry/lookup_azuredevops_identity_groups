data "azuredevops_identity_groups" "identity_groups_lookup" {
  for_each = var.identity_groups_lookup

  project_id = each.value.project_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

