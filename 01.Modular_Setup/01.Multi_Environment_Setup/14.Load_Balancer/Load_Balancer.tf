resource "azurerm_lb" "tusharlbs" {
    for_each = var.tusharlbvars
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    frontend_ip_configuration {
      name = "${each.value.name}-frontend_ip_config"
      public_ip_address_id = data.azurerm_public_ip.tusharpublicipdatalb[each.value.publicip_name].id
    }
}

resource "azurerm_lb_backend_address_pool" "tusharlb_backendpool" {
  for_each = var.tusharlb_backendpool_vars
  name = each.value.name
  loadbalancer_id = azurerm_lb.tusharlbs[each.value.lb_name].id
}

resource "azurerm_lb_backend_address_pool_address" "tusharlb_backendpool_address" {
    for_each = var.tusharlb_backendpool_addressvars
    name = each.value.name
    backend_address_pool_id = azurerm_lb_backend_address_pool.tusharlb_backendpool[each.value.backendpool_name].id
    ip_address = data.azurerm_virtual_machine.tushar_vm_data_lb[each.value.vm_name].private_ip_address
    virtual_network_id = data.azurerm_virtual_network.tushar_vnetdata_lb[each.value.virtual_network_name].id
}

resource "azurerm_lb_probe" "tusharlb_health_probe" {
  for_each = var.tusharlb_healthprobevars
  name = each.value.name
  port = each.value.port
  protocol = each.value.protocol
  loadbalancer_id = azurerm_lb.tusharlbs[each.value.lb_name].id
  number_of_probes = each.value.number_of_probes
  request_path = each.value.request_path
  interval_in_seconds = each.value.interval_in_seconds
}

resource "azurerm_lb_rule" "tusharlb_rules" {
    for_each = var.tusharlb_rulevars
    name = each.value.name
    frontend_ip_configuration_name = each.value.frontend_ip_configuration_name
    backend_port = each.value.backend_port
    frontend_port = each.value.frontend_port
    protocol = each.value.protocol
    loadbalancer_id = azurerm_lb.tusharlbs[each.value.lb_name].id
    probe_id = azurerm_lb_probe.tusharlb_health_probe[each.value.probe_name].id
    enable_tcp_reset = each.value.enable_tcp_reset
    enable_floating_ip = each.value.enable_floating_ip
    load_distribution = each.value.load_distribution
    idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
    backend_address_pool_ids = [azurerm_lb_backend_address_pool.tusharlb_backendpool[each.value.backendpool_name].id]
}