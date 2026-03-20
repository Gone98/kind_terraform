# Kind Cluster with Terraform

Testing the [tehcyx/kind](https://registry.terraform.io/providers/tehcyx/kind/latest) Terraform provider to create [Kind](https://kind.sigs.k8s.io/) (Kubernetes in Docker) clusters. Each version builds on the last and adds more options.

Provider: `tehcyx/kind ~> 0.11.0`
Terraform: `1.14.7`

---

## Versions

### v1 — Hardcoded

All values are written directly in `terraform.tf`. One cluster named `131` running Kubernetes `v1.31.14` with 4 nodes: 1 control-plane and 3 workers. Nothing is configurable.

### v2 — Variables

Moves cluster name, node image, and API version into `variable.tf` so they can be changed without editing the main file. Node count is still fixed.

### v3 — Dynamic Nodes

The number and type of nodes can now be set via a variable (`kube_nodes`). No more hardcoded node list.

### v4 — Modules, Multiple Versions

Splits into a reusable module with separate folders for each Kubernetes version:

| Folder | Kubernetes | Nodes |
|--------|-----------|-------|
| `131`  | v1.31.14  | 1 control-plane + 1 worker |
| `132`  | v1.32.11  | 1 control-plane + 2 workers |
| `133`  | v1.33.7   | 1 control-plane + 3 workers |

### v5 — Custom Networking

Adds `pod_subnet` and `service_subnet` variables so each cluster can use its own IP ranges. This allows all three clusters to run at the same time without IP conflicts:

| Folder | Pod CIDR         | Service CIDR     |
|--------|-----------------|-----------------|
| `131`  | `10.254.0.0/16` | `10.134.0.0/16` |
| `132`  | `10.252.0.0/16` | `10.132.0.0/16` |
| `133`  | `10.253.0.0/16` | `10.133.0.0/16` |

---

## Node Images

```
kindest/node:v1.31.14@sha256:6f86cf509dbb42767b6e79debc3f2c32e4ee01386f0489b3b2be24b0a55aac2b
kindest/node:v1.32.11@sha256:5fc52d52a7b9574015299724bd68f183702956aa4a2116ae75a63cb574b35af8
kindest/node:v1.33.7@sha256:d26ef333bdb2cbe9862a0f7c3803ecc7b4303d8cea8e814b481b09949d353040
```
