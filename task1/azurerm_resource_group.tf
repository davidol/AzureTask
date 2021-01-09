# Creates resource group

resource "azurerm_resource_group" "demo_cluster_rg" {
  name     = var.resource_group_name
  location = var.location
}