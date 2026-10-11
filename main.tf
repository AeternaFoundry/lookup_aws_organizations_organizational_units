data "aws_organizations_organizational_units" "organizations_organizational_units_lookup" {
  for_each = var.organizations_organizational_units_lookup

  parent_id = each.value.parent_id
}

