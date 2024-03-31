output "id" {
  value = azurerm_kubernetes_cluster_node_pool.erf_plat_kubernetes_node_pool[*].id ## Because azurerm_kubernetes_cluster_node_pool.erf_plat_kubernetes_node_pool has "count" set, its attributes must be accessed on specific instances.
}
