resource "azurerm_windows_virtual_machine_scale_set" "tusharwindowsvmss" {
  for_each = var.tusharwindowsvmssvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  sku = each.value.sku
  instances = each.value.instances
  admin_username = each.value.name
  admin_password = each.value.admin_password

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer = "WindowsServer"
    version = "latest"
    sku = "2016-Datacenter-Server-Core"
  }
  network_interface {
    name = each.value.nic_name
    primary = true
    ip_configuration {
      name = each.value.ip_configuration_name
      primary = true
      subnet_id = data.azurerm_subnet.tusharsubnetdata[each.value.subnet_name].id
    }
  }
}