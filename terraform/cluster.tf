resource "digitalocean_kubernetes_cluster" "primary" {
  name    = var.cluster_name
  region  = var.region
  version = var.cluster_version
  tags    = var.cluster_tags

  node_pool {
    name       = "${var.cluster_name}-pool"
    size       = var.default_node_size
    auto_scale = true
    min_nodes  = var.min_nodes
    max_nodes  = var.max_nodes
    tags       = var.default_node_tags
  }
}
