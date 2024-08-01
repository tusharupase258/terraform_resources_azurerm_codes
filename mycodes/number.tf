variable "tag_count" {
    description = "Number of tags to assign to the resource group"
    type = number
    default = 2
}

output "tag_count" {
  value = var.tag_count
}