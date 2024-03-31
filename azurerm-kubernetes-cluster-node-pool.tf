resource "azurerm_kubernetes_cluster_node_pool" "erf_plat_kubernetes_node_pool" {
  count                 = length(var.node_pools)
  name                  = var.node_pools[count.index].name
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size               = var.node_pools[count.index].vm_size
  node_count            = var.node_pools[count.index].node_count
  vnet_subnet_id        = var.node_pools[count.index].vnet_subnet_id != null ? var.node_pools[count.index].vnet_subnet_id : null
  min_count             = var.node_pools[count.index].min_count
  max_count             = var.node_pools[count.index].max_count
  enable_auto_scaling   = var.node_pools[count.index].enable_auto_scaling

  tags = {
    Environment = var.environment
  }
}