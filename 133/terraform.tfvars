name = "133"
node_image = "kindest/node:v1.33.7@sha256:d26ef333bdb2cbe9862a0f7c3803ecc7b4303d8cea8e814b481b09949d353040"
kube_nodes = [
        {
            node_plane = "control_plane"
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