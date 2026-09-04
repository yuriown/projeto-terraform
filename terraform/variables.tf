variable "env" {
    type = string
    description = "Environment of the resources"
}

variable "image" {
  type        = string
  default     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20220513.0.0/providers/virtualbox.box"
  description = "OS image to be used in the VM"
}

variable "vm_cpus" {
    type = number
    description = "VM cpu count"
}

variable "vm_memory" {
    type = string
    description = "VM memory count"
}

variable "network_adapter_type" {
    type = string
    default = "hostonly"
}

variable "network_adapter_host_interface" {
    type = string
    default = "vboxnet0"
}