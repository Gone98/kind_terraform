# creating a cluster with kind of the name "test-cluster" with kubernetes version v1.27.1 and two nodes
resource "kind_cluster" "v2_kind_terraform" {
    name = var.cluster_name
    node_image = var.image
    kind_config  {
        kind = "Cluster"
        api_version = var.api_ver
        node {
            role = "control-plane"
        }
        node {
            role =  "worker"
        }
        node {
            role =  "worker"
        }
        node {
            role =  "worker"
        }
    }
}