variable "tusharwindowsvmvars" {
  type = map(object({
    name = string
    resource_group_name = string
    location = string
    size = string
    admin_password = string
    admin_username = string
    network_interface_ids = list(string)
    nic_name = string
  }))
}

variable "tusharnicvars" {
 type = map(object({
   name = string
   resource_group_name = string
 }))
}