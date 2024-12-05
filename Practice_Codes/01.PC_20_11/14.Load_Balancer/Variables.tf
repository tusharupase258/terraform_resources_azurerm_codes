variable "tusharlbvars" {
  type = map(object({
    name = string
    location = string
    resource_group_name = string
    public_ip_address_id = string
    publicip_name = string
  }))
}

variable "tusharpublicipvars" {
  type = map(object({
    name = string
    resource_group_name = string
  }))
}

variable "tusharlb_backendpool_vars" {
  type = map(object({
    name = string
    loadbalancer_id = string
    lb_name = string
  }))
}

variable "tusharlb_backendpool_addressvars" {
  type = map(object({
    name = string
    ip_address = string
    virtual_network_id = string
    backend_address_pool_id = string
    backendpool_name = string
    vm_name = string
    virtual_network_name = string
  }))
}

variable "tusharlb_VMs_backendvars" {
  type = map(object({
    name = string
    resource_group_name = string
  }))
}

variable "tusharvnet_lbvars" {
  type = map(object({
    name = string
    resource_group_name = string
  }))
}

variable "tusharlb_healthprobevars" {
  type = map(object({
    name = string
    port = number
    protocol = string
    loadbalancer_id = string
    number_of_probes = optional(number)
    request_path = optional(string)
    interval_in_seconds = optional(number)
    lb_name = string
  }))
}

variable "tusharlb_rulevars" {
  type = map(object({
    name                            = string
    frontend_ip_configuration_name  = string
    backend_port                    = number
    frontend_port                   = number
    protocol                        = string
    probe_id                        = string
    enable_tcp_reset                = optional(bool, false)
    enable_floating_ip              = optional(bool, false)
    load_distribution                = optional(string, "Default")
    idle_timeout_in_minutes         = optional(number, 4)
    backend_address_pool_ids        = list(string)
    lb_name = string
    loadbalancer_id = string
    probe_name = string
    backendpool_name = string
  }))
}
