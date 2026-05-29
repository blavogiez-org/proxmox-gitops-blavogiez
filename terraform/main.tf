module "vlan1" {
  source = "./modules/vlan"

  name      = "vmbr1"
  vlan_id   = 1
  interface = var.proxmox_interface
  node_name = "homelab"
  address   = "192.168.10.1/24"
  comment   = "POUR INFRA"
}

module "vlan2" {
  source = "./modules/vlan"

  name      = "vmbr2"
  vlan_id   = 2
  interface = var.proxmox_interface
  node_name = "homelab"
  address   = "172.16.10.1/24"
  comment   = "POUR SERVICES EXPOSES A L EXTERIEUR"
}

module "minimal-backup" {
  source = "./modules/backup"

}

module "gh-runner" {
  source = "./modules/vm"

  name                = "gh-runner"
  username            = "admin"
  node_name           = "homelab"
  vm_id               = 120
  vm_template_id      = 9000
  vm_ip               = "192.168.10.11"
  network_gateway     = "192.168.10.1"
  ssh_public_key_path = var.ssh_public_key_path

  cpu       = 2
  memory    = 4096
  disk_size = 10

  bridge = module.vlan1.bridge_name
}
