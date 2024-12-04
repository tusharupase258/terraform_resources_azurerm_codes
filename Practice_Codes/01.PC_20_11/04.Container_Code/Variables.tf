variable "tusharContainervars" {
  type = map(object({
    name = string
    storage_account_id = string
    storage_account_name = string
  }))
}

variable "tusharstoragevars" {
  type = map(object({
    name = string
    location = string
    resource_group_name = string
  }))
}