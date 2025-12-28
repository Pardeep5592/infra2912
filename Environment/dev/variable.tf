variable "rg5" {
  type = map(object({
    rg_name  = string
    location = string
  }))

}

variable "vnets" {
  type = map(object({
    vnet_name           = string
    location            = string
    resource_group_name = string
    cidr                = list(string)
    subnets = map(object({

      subnet_name = string
      cidr        = list(string)
    }))

  }))
}


variable "pips" {
  type = map(object({
    pip_name            = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))

}

variable "nics" {
  type = map(object({
    nic_name             = string
    location             = string
    resource_group_name  = string
    pip_name             = string
    subnet_name          = string
    virtual_network_name = string



    ip_configuration = list(object({
      name = string

      private_ip_address_allocation = string

    }))

  }))

}

variable "vms" {
  type = map(object({
    vm_name= string
    location= string
    resource_group_name= string
    size= string
    admin_username= string
    admin_password= string
    nic_name= string
    

    source_image_reference= object({
      publisher= string
      offer= string
      sku= string
      version= string
    })

  }))
  
}