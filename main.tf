terraform {
  required_version = "~> 1.2"
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc9"
    }

  }

}

resource "proxmox_vm_qemu" "virtual_machine" {
  count       = var.vm_counter
  name        = "${var.node_name}${count.index}"
  target_node = var.target_node
  vmid        = var.vmid
  desc        = var.node_name
  bios        = var.bios
  onboot      = var.onboot
  vm_state    = var.vm_state
  protection  = var.protection
  tablet      = var.tablet
  boot        = var.boot
  clone       = var.clone
  full_clone  = var.full_clone
  memory      = var.memory
  balloon     = var.balloon
  hotplug     = var.hotplug

  cpu {
    sockets = var.sockets
    cores   = var.cores
    type    = var.cpu_type

  }
  disk {
    slot    = var.disk_slot
    type    = var.disk_type
    size    = var.disk_size
    storage = var.storage
  }

  network {
    id        = 0
    model     = var.network_model
    bridge    = var.network_bridge
    link_down = var.link_down
  }
}