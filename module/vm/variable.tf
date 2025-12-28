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