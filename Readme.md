A lightweight Azure Resource Manager (ARM) template to provision a Debian 12 “stable” virtual machine with SSH access and a single network security group. The template creates:

- A Virtual Network (10.0.0.0/16) with a single subnet (10.0.0.0/24)
- A Network Security Group allowing SSH (TCP/22)
- A Public IP (Dynamic)
- A Network Interface bound to the subnet and NSG
- A Debian 12 VM with an SSH public key
