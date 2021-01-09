# Creates private container registry

resource "azurerm_container_registry" "demo_private_registry_acr" {
  name                = var.container_registry_name
  resource_group_name = azurerm_resource_group.demo_cluster_rg.name
  location            = azurerm_resource_group.demo_cluster_rg.location
  sku                 = "Basic"
  admin_enabled       = false
  tags = {
    Environment = "Dev"
    Author      = "David"
  }
}