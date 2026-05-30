#cloud-config
hostname: ${hostname}

users:
  - default
  - name: ${username}
    groups:
      - sudo
    shell: /bin/bash
    ssh_authorized_keys:
      - ${ssh_public_key}
    sudo: ALL=(ALL) NOPASSWD:ALL
packages:
  - qemu-guest-agent
  - curl 
runcmd: 
  - systemctl enable qemu-guest-agent
  - systemctl start qemu-guest-agent
  - curl -fsSl https://get.docker.com | sh