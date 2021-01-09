# required outputs from the deployment

output "cluster_dns" {
  value = "${azurerm_kubernetes_cluster.demo_cluster_aks.kube_config.0.host}"
}

output "container_registry_dns" {
  value = "${azurerm_container_registry.demo_private_registry_acr.login_server}"
}