variable "kubernetes_cluster_id" {
  description = "(Required) The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
}

variable "environment" {
  description = "Environment, it can be dev/ qa/ prod"
  type        = string
}

variable "node_pools" {
  description = "list of node pools in an AKS cluster"
  type = list(object({
    name                = string
    node_count          = number
    vm_size             = string
    vnet_subnet_id      = string ##(Optional) The ID of the Subnet where this Node Pool should exist. Changing this forces a new resource to be created.
    min_count           = number
    max_count           = number
    enable_auto_scaling = bool
  }))
}
