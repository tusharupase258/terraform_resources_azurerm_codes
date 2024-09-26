resource "azurerm_lb" "tusharlb1" {
  name = "tusharlb1"
  location = "France Central"
  resource_group_name = "tusharRG1"
  frontend_ip_configuration {
    name = "tusharlbfrontendipconfig"
    public_ip_address_id = data.azurerm_public_ip.tusharpubliciplbdata.id
  }
}

resource "azurerm_lb_backend_address_pool" "tusharlbbackendpool" {
  name = "tusharlbbackendpool"
  loadbalancer_id = azurerm_lb.tusharlb1.id
}

resource "azurerm_lb_backend_address_pool_address" "tusharlbbackendpooladdress" {
    for_each = var.tusharprivateiplb
  name = data.azurerm_virtual_machine.tusharvmdatalb[each.key].name
  backend_address_pool_id = azurerm_lb_backend_address_pool.tusharlbbackendpool.id
  ip_address = data.azurerm_virtual_machine.tusharvmdatalb[each.key].private_ip_address
  virtual_network_id = data.azurerm_virtual_network.tusharlbvnetdata.id
}

resource "azurerm_lb_probe" "tusharlbhealthprobe" {
  name = "tusharlbhealthprobe"
  port = 80
  protocol = "Tcp"
  loadbalancer_id = azurerm_lb.tusharlb1.id
}

resource "azurerm_lb_rule" "tusharlbrule" {
  name = "tusharlbrule"
  loadbalancer_id = azurerm_lb.tusharlb1.id
  protocol = "Tcp"
  frontend_port = "80"
  backend_port = "80"
  frontend_ip_configuration_name = "tusharlbfrontendipconfig"
  backend_address_pool_ids = [ azurerm_lb_backend_address_pool.tusharlbbackendpool.id ]
}