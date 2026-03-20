# creating a cluster with kind of the name "test-cluster" with kubernetes version v1.27.1 and two nodes
resource "kind_cluster" "v1_kind_terraform" {
    name = "131"
    node_image = "kindest/node:v1.31.14@sha256:6f86cf509dbb42767b6e79debc3f2c32e4ee01386f0489b3b2be24b0a55aac2b"
    kind_config  {
        kind = "Cluster"
        api_version = "kind.x-k8s.io/v1alpha4"
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