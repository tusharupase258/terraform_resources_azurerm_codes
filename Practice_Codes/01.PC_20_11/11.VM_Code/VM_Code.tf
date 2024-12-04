resource "azurerm_linux_virtual_machine" "tusharvms" {
  for_each = var.tusharvmvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  size = each.value.size
  admin_username = each.value.name
  admin_password = data.azurerm_key_vault_secret.tusharsecretdata[each.value.name].value
  disable_password_authentication = false
  network_interface_ids = [data.azurerm_network_interface.tusharnicdata[each.value.nic_name].id]

    os_disk {
     caching = "ReadWrite"
     storage_account_type = "Standard_LRS"
    }

   source_image_reference {
     offer = "0001-com-ubuntu-server-jammy"
     publisher = "Canonical"
     version = "latest"
     sku = "22_04-lts"
    }
}