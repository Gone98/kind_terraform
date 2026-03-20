variable "cluster_name" {
    description = "name of clusters"
    type = string
    default = "131"
}

variable "image" {
    description = "image of kind's clusters"
    type = string
    default = "kindest/node:v1.31.14@sha256:6f86cf509dbb42767b6e79debc3f2c32e4ee01386f0489b3b2be24b0a55aac2b"
}

variable "api_ver" {
    description = "kind's api version"
    type = string
    default = "kind.x-k8s.io/v1alpha4"
}

variable "kube_nodes" {
    description = "ndoes for kubernetes"
    type = list(object({
    node_plane = string
  }))
    default = [
        {
            node_plane = "control-plane"
        },
        {
            node_plane = "worker"
        },
        {
            node_plane = "worker"
        },
        {
            node_plane = "worker"
        }
    ]
}