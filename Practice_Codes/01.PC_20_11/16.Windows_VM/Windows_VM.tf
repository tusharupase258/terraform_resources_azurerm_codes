resource "azurerm_windows_virtual_machine" "tusharwindowsvms" {
    for_each = var.tusharwindowsvmvars
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    size = each.value.size
    admin_password = each.value.admin_password
    admin_username = each.value.name
    network_interface_ids = [data.azurerm_network_interface.tusharnicdata[each.value.nic_name].id]

    os_disk {
        caching = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    source_image_reference {
      offer = "WindowsServer"
      publisher = "MicrosoftWindowsServer"
      version = "latest"
      sku = "2016-Datacenter"
    }
}