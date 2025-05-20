This repo contains simple ARM templates for deploying either a Debian 12 VM or a minimal AKS cluster. The VM template provisions a single VM with SSH access and networking resources:

- A Virtual Network (10.0.0.0/16) with a single subnet (10.0.0.0/24)
- A Network Security Group allowing SSH (TCP/22)
- A Public IP (Dynamic)
- A Network Interface bound to the subnet and NSG
- A Debian 12 VM with an SSH public key

## Deploying an AKS cluster

`make aksup` deploys an Azure Kubernetes Service cluster defined in `aks.json`. The cluster uses a single node to keep costs down. Run `make clean` to remove the resource group and all deployed resources.
