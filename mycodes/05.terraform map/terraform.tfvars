rg_set = {
  tusharg1={
    name = "rg111"
    location = "East us"
  }
  tusharg2={
    name = "rg112"
    location ="West Us"
  }
  tusharg3 ={
    name = "rg123"
    location = "South India"
  }
}

stg_set = {
   stg1= {
      name = "stgtus12"
      location = "East us"
      resource_group_name = "rg111"
      account_replication_type = "LRS"
      account_tier = "Standard"
  }
    stg2= {
      name = "stgtus31"
      location = "West us"
      resource_group_name = "rg112"
      account_replication_type = "GRS"
      account_tier = "Standard"
  }
    stg3= {
      name = "stgtus4"
      location = "South India"
      resource_group_name = "rg123"
      account_replication_type = "LRS"
      account_tier = "Standard"
  }
  }