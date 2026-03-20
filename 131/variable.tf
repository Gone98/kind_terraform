variable "name" {
    description = "name of clusters"
    type = string
}

variable "node_image" {
    description = "image of kind's clusters"
    type = string
 }

 variable "kube_nodes" {
    description = "ndoes for kubernetes"
    type = list(object({
    node_plane = string
  }))
}

variable "pod_subnet" {
  type = string
  description = "Pod Subnets CIDR"
}

variable "service_subnet" {
  type = string
  description = "Service Subnets CIDR"
}