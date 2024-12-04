variable "tusharbastionhostsvars" {
  type = map(object({
    name = string
    resource_group_name = string
    location = string
    subnet_id = string
    public_ip_address_id = string
    virtual_network_name = string
    subnet_name = string
    public_ip_name = string
    ipconfig_bastion_name = string
  }))
}