resource "proxmox_network_linux_bridge" "this" {
  node_name = var.node_name

  name    = var.name
  ports   = ["${var.interface}.${var.vlan_id}"]
  address = var.address

  comment = var.comment
}
