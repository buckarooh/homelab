variable "target_node" {
  type        = string
  description = ""
  default     = "pve"
}

variable "hostname" {
  type        = string
  description = "Hostname of VM (defaults to base)"
  default     = "base"
}

variable "vmid" {
  type        = number
  description = "VM ID (defaults to 400)"
  default     = 400
}

variable "tags" {
  type        = string
  description = "VM tags"
  default     = ""
}

variable "clone_template_name" {
  type        = string
  description = "VM Template name to clone"
}

variable "onboot" {
  type        = bool
  description = "Start VM on boot"
  default     = false
}

variable "oncreate" {
  type        = bool
  description = "Start VM on creation"
  default     = true
}

variable "cores" {
  type        = number
  description = "Number of cores"
  default     = 1
}

variable "sockets" {
  type        = number
  description = "Number of sockets"
  default     = 1
}

variable "memory" {
  type        = number
  description = "Memory in MB"
  default     = 1024
}

variable "disk_size" {
  type        = string
  description = "VM bootdisk size"
  default     = "10G"
}

variable "ssh_user" {
  type        = string
  description = "SSH user"
}

variable "ssh_private_key" {
  type        = string
  description = "Private SSH key"
}

variable "ssh_public_key" {
  type        = string
  description = "Public SSH key"
}
