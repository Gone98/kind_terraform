module "_132" {
    source = "../"
    cluster_name = var.name
    image = var.node_image
    kube_nodes = var.kube_nodes
}