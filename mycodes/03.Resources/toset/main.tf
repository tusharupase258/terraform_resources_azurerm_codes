variable "rgset" {
    default = ["rg1","rg2","rg2"]
    description = "list og rgs"
}

resource "azurerm_resource_group" "Rg" {
    for_each = toset(var.rgset)
    name = each.value
    location = "west us"
}