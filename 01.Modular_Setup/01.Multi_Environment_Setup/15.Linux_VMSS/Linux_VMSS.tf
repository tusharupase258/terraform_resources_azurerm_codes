resource "azurerm_linux_virtual_machine_scale_set" "tusharlinuxvmss" {
  for_each = var.tusharlinuxvmssvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  admin_username = each.value.name
  admin_password = each.value.admin_password
  disable_password_authentication = false
  sku = each.value.sku
  instances = each.value.instances

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    offer = "0001-com-ubuntu-server-jammy"
    publisher = "Canonical"
    version =  "latest"
    sku = "22_04-lts"
  }
  network_interface {
    name = each.value.nic_name
    primary = true
    ip_configuration {
      name = each.value.ip_configuration_name
      primary = true
      subnet_id = data.azurerm_subnet.tusharsubnetdatalinuxvmss[each.value.subnet_name].id
    }
  }
}