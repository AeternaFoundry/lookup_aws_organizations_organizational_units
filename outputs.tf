output "organizations_organizational_units_lookup_id" {
  description = "Map of id values across all organizations_organizational_units_lookup, keyed the same as var.organizations_organizational_units_lookup"
  value       = { for k, v in data.aws_organizations_organizational_units.organizations_organizational_units_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_organizational_units_lookup_children" {
  description = "Map of children values across all organizations_organizational_units_lookup, keyed the same as var.organizations_organizational_units_lookup"
  value       = { for k, v in data.aws_organizations_organizational_units.organizations_organizational_units_lookup : k => v.children if v.children != null && length(v.children) > 0 }
}
output "organizations_organizational_units_lookup_parent_id" {
  description = "Map of parent_id values across all organizations_organizational_units_lookup, keyed the same as var.organizations_organizational_units_lookup"
  value       = { for k, v in data.aws_organizations_organizational_units.organizations_organizational_units_lookup : k => v.parent_id if v.parent_id != null && length(v.parent_id) > 0 }
}

