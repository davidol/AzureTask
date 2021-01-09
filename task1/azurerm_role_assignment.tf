# Assign the k8s clusters user managed identity to pull the images from container registry.

resource "azurerm_role_assignment" "demo_aks_acr_role" {
  scope                            = azurerm_container_registry.demo_private_registry_acr.id
  role_definition_name             = "AcrPull"
  principal_id                     = azurerm_kubernetes_cluster.demo_cluster_aks.kubelet_identity.0.object_id
  skip_service_principal_aad_check = true
}