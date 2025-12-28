resource "azurerm_resource_group" "RG" {
  for_each = var.rg5
  name     = each.value.rg_name
  location = each.value.location
  lifecycle {

    create_before_destroy = false
  }
}
