resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.vms
  name= each.value.vm_name
  location=each.value.location
  resource_group_name = each.value.resource_group_name
  size= each.value.size
  admin_username = each.value.admin_username
  admin_password = each.value.admin_password
  network_interface_ids = [data.azurerm_network_interface.nic[each.key].id]
  disable_password_authentication = false
  os_disk {
    caching= "ReadWrite"
    storage_account_type = "Standard_LRS"
    }
  source_image_reference {
    
    publisher=each.value.source_image_reference.publisher
    offer=each.value.source_image_reference.offer
    sku=each.value.source_image_reference.sku
    version=each.value.source_image_reference.version
    }
  
}