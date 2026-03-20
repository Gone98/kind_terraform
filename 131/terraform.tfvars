name = "131"
node_image = "kindest/node:v1.31.14@sha256:6f86cf509dbb42767b6e79debc3f2c32e4ee01386f0489b3b2be24b0a55aac2b"
kube_nodes = [
        {
            node_plane = "control_plane"
        },
        {
            node_plane = "worker"
        }
    ]
pod_subnet = 10.254.0.0/16
service_subnet = 10.134.0.0/16