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
