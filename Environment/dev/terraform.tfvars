rg5 = {
  rg = {
    rg_name  = "rg-tondu4"
    location = "central india"
  }
}

vnets = {
  vnet1 = {
    vnet_name           = "todovnet"
    location            = "central india"
    resource_group_name = "rg-tondu"
    cidr                = ["10.0.0.0/16"]
    subnets = {
      s1 = {
        subnet_name = "frontendsubnet"
        cidr        = ["10.0.1.0/24"]
      }
      s2 = {
        subnet_name = "backendsubnet"
        cidr        = ["10.0.2.0/24"]
      }
    }


  }
}

pips = {
  pip1 = {

    pip_name            = "frontendpip"
    location            = "central india"
    resource_group_name = "rg-tondu"
    allocation_method   = "Static"

  }
}

nics = {
  nic1 = {
    nic_name             = "frontendnic"
    location             = "central india"
    resource_group_name  = "rg-tondu"
    pip_name             = "frontendpip"
    subnet_name          = "frontendsubnet"
    virtual_network_name = "todovnet"
    ip_configuration = [{
      name                          = "ipconfig"
      private_ip_address_allocation = "Dynamic"
    }]

  }
}

vms = {
  vm1 = {
    vm_name             = "frontendvm"
    location            = "central india"
    resource_group_name = "rg-tondu"
    nic_name            = "frontendnic"
    size                = "Standard_D2ds_v6"
    admin_username      = "azureuser"
    admin_password      = "Password1234!"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts-gen2"
      version   = "latest"
    }

  }
}
