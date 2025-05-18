
variable "target_node" {
  type        = string
  default     = "pve"
  description = "proxmox node where deployment will be done"
}


variable "vmid" {
  type        = number
  default     = 0
  description = "virtual machine ID"
}


variable "bios" {
  type        = string
  default     = "seabios"
  description = "bios for virtual machine"
}
variable "onboot" {
  type        = bool
  default     = true
  description = "startup virtual machine during host booting"
}

variable "vm_state" {
  type        = string
  default     = "running"
  description = "virtual machine state after creation"
}

variable "protection" {
  type        = bool
  default     = false
  description = "if enabled, prevent virtual machine to be deleted accidentally"
}

variable "tablet" {
  type        = bool
  default     = true
  description = "allow input devices"
}

variable "boot" {
  type        = string
  default     = "order=scsi0;net0"
  description = "define device boot order"
}

variable "clone" {
  type        = string
  default     = "ubuntu-server1"
  description = "define target template to be used"
}
variable "full_clone" {
  type        = bool
  default     = true
  description = "decide if a clone will be full or linked"

}

variable "memory" {
  type        = number
  default     = 2048
  description = "define memory size for virtual machine"
}

variable "balloon" {
  type        = number
  default     = 1024
  description = "define memory reservation"
}

variable "sockets" {
  type        = number
  default     = 1
  description = "define cpu sockets"
}

variable "cores" {
  type        = number
  default     = 1
  description = "define cpu cores"
}

variable "cpu_type" {
  type        = string
  default     = "host"
  description = "define cpu type to be used"
}

variable "hotplug" {
  type        = string
  default     = "cpu,disk,network,usb"
  description = "define hotplug devices"
}

variable "disk_slot" {
  type        = string
  default     = "scsi0"
  description = "disk slot"
}
variable "disk_type" {
  type        = string
  default     = "disk"
  description = "define disk type to be used"
}

variable "disk_size" {
  type        = string
  default     = "32G"
  description = "define disk size note: this size should met with one defined in template"
}

variable "storage" {
  type        = string
  default     = "local-lvm"
  description = "defines storage location for virtual machine disk"

}

variable "network_model" {
  type        = string
  default     = "virtio"
  description = "define network interface model"
}

variable "network_bridge" {
  type        = string
  default     = "vmbr0"
  description = "define network interface mode"
}

variable "link_down" {
  type        = bool
  default     = false
  description = "define network interface status"
}

/*

variable "vm_counter" {
  type        = number
  #default     = 2
  description = "number of resources to be created"
}
variable "node_name" {
  type        = string
  #default     = "node-0"
  description = "node nome to be associated with resource"
}
*/
