resource "local_file" "kubeconfig" {
  content  = digitalocean_kubernetes_cluster.primary.kube_config[0].raw_config
  filename = pathexpand(var.kubeconfig_path)
}

resource "local_file" "kubeconfig_workload" {
  content  = digitalocean_kubernetes_cluster.workload.kube_config[0].raw_config
  filename = pathexpand(var.kubeconfig_workload_path)
}
