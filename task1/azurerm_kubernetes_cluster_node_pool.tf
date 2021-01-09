# Creates additional user cluster for workload

resource "azurerm_kubernetes_cluster_node_pool" "demo_user_cluster_akspool" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.demo_cluster_aks.id
  vm_size               = var.user_cluster_vm_size
  enable_auto_scaling   = true
  max_count             = 3
  min_count             = 1
  node_count            = 1
  count                 = var.user_cluster_count
  tags = {
    Environment = "Dev"
    Author      = "David"
  }
}