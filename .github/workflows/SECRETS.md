# Configuration des Secrets GitHub Actions

Pour que le pipeline fonctionne, vous devez créer les secrets suivants dans GitHub (**Settings -> Secrets and variables -> Actions**).

> **Important :** Ne mettez pas `TF_VAR_` dans le nom du secret sur GitHub. Le pipeline s'occupe de faire le lien. Nommez-les exactement comme dans la colonne "Nom du Secret" ci-dessous.

## 1. Pour Terraform (Infrastructure)

| Nom du Secret | Correspondance dans Terraform | Description |
| :--- | :--- | :--- |
| `PROXMOX_ENDPOINT` | `proxmox_endpoint` | URL API (ex: https://1.2.3.4:8006/api2/json) |
| `PROXMOX_API_TOKEN` | `proxmox_api_token` | Token d'API Proxmox |
| `PROXMOX_INSECURE` | `proxmox_insecure` | Mettre `true` ou `false` |
| `PROXMOX_SSH_USERNAME` | `proxmox_ssh_username` | Utilisateur SSH (ex: `root`) |
| `PROXMOX_STORAGE` | `storage` | Nom du stockage Proxmox (ex: `local-lvm`) |
| `PROXMOX_SSH_PRIVATE_KEY` | `proxmox_ssh_private_key_path` | La clé PRIVÉE pour se connecter au Proxmox |
| `SSH_PUBLIC_KEY` | `ssh_public_key_path` | La clé PUBLIQUE qui sera injectée dans vos VMs |

## 2. Pour Ansible (Configuration)

| Nom du Secret | Description |
| :--- | :--- |
| `ANSIBLE_SSH_KEY` | La clé PRIVÉE pour se connecter aux VMs créées (Caddy, etc) |
