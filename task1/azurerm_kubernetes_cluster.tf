# Creates k8s cluster with required extentions.

resource "azurerm_kubernetes_cluster" "demo_cluster_aks" {
  name                = var.cluster_name
  location            = azurerm_resource_group.demo_cluster_rg.location
  resource_group_name = azurerm_resource_group.demo_cluster_rg.name
  dns_prefix          = var.dns_prefix


  default_node_pool {
    name                = "default"
    node_count          = var.system_node_count
    vm_size             = var.system_cluster_vm_size
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = false
  }

  kubernetes_version = "1.18.10"

  identity {
    type = "SystemAssigned"
  }

  addon_profile {
    http_application_routing {
      enabled = false
    }
    kube_dashboard {
      enabled = false
    }
  }

  tags = {
    Environment = "Dev"
    Author      = "David"
  }
}
