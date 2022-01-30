variable digitalocean_token {
  description = "The API token from your Digital Ocean control panel"
  type        = string
}

variable cluster_name {
  description = "The name of the kubernetes cluster to create"
  type        = string
}

#> doctl kubernetes options versions
variable cluster_version {
  description = "The version of the kubernetes cluster to create"
  type        = string
}

variable "cluster_tags" {
  description = "A list of optional tags to add to the cluster"
  default     = []
}

variable region {
  description = "The digital ocean region slug for where to create resources"
  type        = string
  default     = "ams3"
}

variable top_level_domains {
  description = "Top level domains to create records and pods for"
  type    = list(string)
}

variable letsencrypt_email {
  type = string
}

variable min_nodes {
  description = "The minimum number of nodes in the default pool"
  type        = number
  default     = 3
}

variable max_nodes {
  description = "The maximum number of nodes in the default pool"
  type        = number
  default     = 6
}

# https://slugs.do-api.dev/
variable default_node_size {
  description = "The default digital ocean node slug for each node in the default pool"
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "default_node_tags" {
  description = "Specific tags for the node pool in the cluster - the tags from the cluster are also applied automatically"
  default     = []
}

variable "kubeconfig_path" {
  description = "The path to save the kubeconfig to"
  default     = "~/.kube/do-config"
}
