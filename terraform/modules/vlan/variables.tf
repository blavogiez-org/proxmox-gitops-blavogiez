variable "node_name" {
  type        = string
  description = "Nom du nodee Proxmox sur lequel le VLAN sera créé."
}

variable "name" {
  type        = string
  description = "Nom du bridge Linux Proxmox cree pour ce VLAN (ex: vmbr1)."
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
