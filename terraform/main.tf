terraform {
    required_version = ">= 1.3.0"

    required_providers {
        virtualbox = {
            source = "terra-farm/virtualbox"
            version = "0.2.2-alpha.1"
        }    
    }

    backend local {}
}

resource "virtualbox_vm" "node" {
  name      = "vm-${var.env}"
  image     = var.image
  cpus      = var.vm_cpus
  memory    = var.vm_memory

  network_adapter {
    type           = var.network_adapter_type
    host_interface = var.network_adapter_host_interface
  }
}