# resource "azurerm_lb" "tusharlbs" {
#     name = "tusharlb1"
#     resource_group_name = "tusharRG1"
#     location = "France Central"
#     frontend_ip_configuration {
#       name = "tusharlbfrontipconfig"
#       public_ip_address_id = data.azurerm_public_ip.tusharpubliciplbdata.id
#     }
# }

# resource "azurerm_lb_backend_address_pool" "tusharlbbackendaddresspool" {
#   name = "tusharlbbackendaddresspool"
#   loadbalancer_id = azurerm_lb.tusharlbs.id
# }

# resource "azurerm_lb_backend_address_pool_address" "tusharlbbackendaddresspooladdress" {
#   for_each = data.azurerm_network_interface.tusharnicdatalb
#   name = "tusharlbbackendaddresspooladdress-${each.key}"
#   backend_address_pool_id = azurerm_lb_backend_address_pool.tusharlbbackendaddresspool.id
#   ip_address = each.value.private_ip_address
# }

# resource "azurerm_lb_probe" "tusharlbhealthprobe" {
#   name = "tusharlbhealthprobe"
#   loadbalancer_id = azurerm_lb.tusharlbs.id
#   port = 80
#   protocol = "Tcp"
# }

# resource "azurerm_lb_rule" "tusharlbrule" {
#   name = "tusharlbrule"
#   loadbalancer_id = azurerm_lb.tusharlbs.id
#   protocol = "Tcp"
#   frontend_port = 80
#   backend_port = 80
#   frontend_ip_configuration_name = "tusharlbfrontipconfig"
# }