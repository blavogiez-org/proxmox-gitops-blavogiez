variable "node_name" {
  type        = string
  description = "Nom du nœud Proxmox sur lequel le VLAN sera créé."
}

variable "name" {
  type        = string
  description = "Nom du bridge Linux Proxmox cree pour ce VLAN (ex: vmbr1)."
}

variable "interface" {
  type        = string
  description = "Interface physique parent utilisée pour créer le VLAN (ex: eno0, eth0)."
}

variable "vlan_id" {
  type        = number
  description = "Identifiant VLAN (VID) utilisé pour tagger le trafic réseau."
}

variable "address" {
  type        = string
  default     = null
  description = "Adresse IP attribuée à l'interface VLAN (si configurée statiquement)."
}

variable "comment" {
  type        = string
  default     = ""
  description = "Commentaire optionnel pour documenter l'usage du VLAN."
}
