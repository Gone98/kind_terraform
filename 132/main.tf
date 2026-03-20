module "_132" {
    source = "../"
    cluster_name = var.name
    image = var.node_image
    kube_nodes = var.kube_nodes
    pod_subnet = var.pod_subnet
    service_subnet = var.service_subnet
}