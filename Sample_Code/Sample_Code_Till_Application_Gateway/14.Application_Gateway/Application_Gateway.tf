resource "azurerm_application_gateway" "tusharappgateway" {
  name = "tusharappgateway"
  resource_group_name = "tusharRG1"
  location = "France Central"

  sku {
    name = "Standard_v2"
    tier = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name = "gateway_ip_config"
    subnet_id = data.azurerm_subnet.appgatewaysubnetdata.id
  }
  frontend_port {
    name = "Frontend_port80"
    port = 80
  }
  #   frontend_port {
  #   name = "Frontend_port_443_https"
  #   port = 443
  # }

  frontend_ip_configuration {
    name =  "appgatewayfrontipconfig"
    public_ip_address_id = data.azurerm_public_ip.tusharapgwpublicipdata.id
  }
  backend_address_pool {
    name = "appgatewaybackend_address_pool"
    ip_addresses = [ data.azurerm_network_interface.nic1_data.private_ip_address, data.azurerm_network_interface.nic2_data.private_ip_address]
  }
  # backend_address_pool {
  #   name = "appgatewaybackend_address_pool2"
  #   ip_addresses = [ data.azurerm_network_interface.nic2_data.private_ip_address]
  # }


  backend_http_settings {
    name = "backend_http_settings"
    port = 80
    cookie_based_affinity = "Disabled"
    protocol = "Http"
  }

  http_listener {
    name = "http_listener80"
    frontend_port_name = "Frontend_port80"
    frontend_ip_configuration_name = "appgatewayfrontipconfig"
    protocol = "Http"
  }
  #    http_listener {
  #   name = "http_listener443"
  #   frontend_port_name = "Frontend_port_443_https"
  #   frontend_ip_configuration_name = "appgatewayfrontipconfig"
  #   protocol = "Https"
  # }

  request_routing_rule {
    name                       = "http-rule"
    rule_type                  = "Basic"
    http_listener_name         = "http_listener80"
    backend_address_pool_name  = "appgatewaybackend_address_pool"
    backend_http_settings_name = "backend_http_settings"
    priority = 100
  }
  #   request_routing_rule {
  #   name                       = "https-rule"
  #   rule_type                  = "Basic"
  #   http_listener_name         = "http_listener443"
  #   backend_address_pool_name  = "appgatewaybackend_address_pool"
  #   backend_http_settings_name = "backend_http_settings443"
  # }

}





