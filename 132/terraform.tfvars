name = "132"
node_image = "kindest/node:v1.32.11@sha256:5fc52d52a7b9574015299724bd68f183702956aa4a2116ae75a63cb574b35af8"
kube_nodes = [
        {
            node_plane = "control_plane"
        },
        {
            node_plane = "worker"
        },
        {
            node_plane = "worker"
        }
    ]