resource "proxmox_network_linux_bridge" "this" {
  node_name = var.node_name

  name    = var.name
  ports   = []
  address = var.address

  comment = var.comment
}
