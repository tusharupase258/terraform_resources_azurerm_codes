module "azurerm_resource_group_module" {
  source       = "../02.RG_Code"
  tusharRGvars = var.tusharRGvarsM
}

module "azurerm_storage_account_module" {
  depends_on        = [module.azurerm_resource_group_module]
  source            = "../03.Storage_Account_Code"
  tusharstoragevars = var.tusharstoragevarsM
}

module "azurerm_storage_container_module" {
  depends_on          = [module.azurerm_storage_account_module]
  source              = "../04.Container_Code"
  tusharContainervars = var.tusharContainervarsM
  tusharstoragevars   = var.tusharstoragevarsM
}

module "azurerm_virtual_network_module" {
  depends_on     = [module.azurerm_resource_group_module]
  source         = "../05.Vnet_Code"
  tusharvnetvars = var.tusharvnetvarsM
}

module "azurerm_subnet_module" {
  depends_on        = [module.azurerm_virtual_network_module]
  source            = "../06.Subnet_Code"
  tusharsubnetsvars = var.tusharsubnetsvarM
}

module "azurerm_key_vault_module" {
  depends_on          = [module.azurerm_resource_group_module]
  source              = "../07.Key_vault_Code"
  tusharkeyvaultsvars = var.tusharkeyvaultsvarsM
}

module "azurerm_key_vault_secret_module" {
  depends_on          = [module.azurerm_key_vault_module]
  source              = "../08.Secret_Generate_Code"
  tusharkeyvaultsvars = var.tusharkeyvaultsvarsM
  tusharvmvars        = var.tusharvmvarsM
}

module "azurerm_public_ip_module" {
  depends_on         = [module.azurerm_subnet_module]
  source             = "../09.Public_Ip_Code"
  tusharpublicipvars = var.tusharpublicipvarsM
}

module "azurerm_network_interface_module" {
  depends_on         = [module.azurerm_public_ip_module] #module.azurerm_network_security_group_module,
  source             = "../10.NIC_Code"
  tusharsubnetvars   = var.tusharsubnetsvarM
  tusharnicvars      = var.tusharnicvarsM
  tusharpublicipvars = var.tusharpublicipvarsM
  tusharnsgvars      = var.tusharnsgvarsM
}

module "azurerm_linux_virtual_machine_module" {
  depends_on          = [module.azurerm_network_interface_module, module.azurerm_key_vault_secret_module]
  source              = "../11.VM_Code"
  tusharkeyvaultsvars = var.tusharkeyvaultsvarsM
  tusharnicvars       = var.tusharnicvarsM
  tusharvmvars        = var.tusharvmvarsM
}

# module "azurerm_network_security_group_module" {
#   depends_on    = [module.azurerm_resource_group_module]
#   source        = "../12.NSG_Code"
#   tusharnsgvars = var.tusharnsgvarsM
# }

module "azurerm_bastion_host_module" {
  depends_on             = [module.azurerm_public_ip_module, module.azurerm_subnet_module]
  source                 = "../13.Bastion_Code"
  tusharbastionhostsvars = var.tusharbastionhostsvarsM
}


module "azurerm_lb_module" {
  depends_on                       = [module.azurerm_public_ip_module, module.azurerm_linux_virtual_machine_module]
  source                           = "../14.Load_Balancer"
  tusharlbvars                     = var.tusharlbvarsM
  tusharpublicipvars               = var.tusharpublicipvarsM
  tusharlb_backendpool_vars        = var.tusharlb_backendpool_varM
  tusharlb_backendpool_addressvars = var.tusharlb_backendpool_addressvarsM
  tusharlb_VMs_backendvars         = var.tusharlb_VMs_backendvarsM
  tusharvnet_lbvars                = var.tusharvnet_lbvarsM
  tusharlb_healthprobevars         = var.tusharlb_healthprobevarsM
  tusharlb_rulevars                = var.tusharlb_rulevarsM
}


module "azurerm_linux_virtual_machine_scale_set_module" {
  depends_on          = [module.azurerm_subnet_module]
  source              = "../15.Linux_VMSS"
  tusharlinuxvmssvars = var.tusharlinuxvmssvarsM
  tusharsubnetvars    = var.tusharsubnetsvarM
}

module "azurerm_windows_virtual_machine_module" {
  depends_on          = [module.azurerm_subnet_module, module.azurerm_network_interface_module]
  source              = "../16.Windows_VM"
  tusharwindowsvmvars = var.tusharwindowsvmvarM
  tusharnicvars       = var.tusharnicvarsM
}


module "azurerm_windows_virtual_machine_scale_set_module" {
  depends_on            = [module.azurerm_subnet_module]
  source                = "../17.Windows_VMSS"
  tusharsubnetvars      = var.tusharsubnetsvarM
  tusharwindowsvmssvars = var.tusharwindowsvmssvarsM
}