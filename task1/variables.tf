# Variables declaration for files to use

variable "cluster_name" {
  type        = string
  description = "k8s Cluster name"
}

variable "system_node_count" {
  type        = number
  description = "nuber of nodes in default cluster"
}

variable "system_cluster_vm_size" {
  type        = string
  description = "vm size of system cluster"
}

variable "user_cluster_count" {
  type        = number
  description = "number of additional cluster node"
}

variable "user_cluster_vm_size" {
  type        = string
  description = "Vm size in user cluster"
}

variable "dns_prefix" {
  type        = string
  description = "dns prefix"
}

variable "resource_group_name" {
  type        = string
  description = "resource group to deploy"
}

variable "location" {
  type        = string
  description = "location to deploy"
}

variable "container_registry_name" {
  type        = string
  description = "registry name"
}