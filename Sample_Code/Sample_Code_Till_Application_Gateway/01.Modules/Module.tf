module "tusharRGsm" {
  source        = "../02.RG"
  tusharRGsvars = var.tusharRGsvarm
}

module "tusharStoragesM" {
  depends_on         = [module.tusharRGsm]
  source             = "../03.Storage"
  tusharStoragesvars = var.tusharStorageVarM
}

module "tusharContainersM" {
  depends_on           = [module.tusharStoragesM]
  source               = "../04.Container"
  tusharcontainersvars = var.tusharcontainersvarsM
}

module "tusharVnetM" {
  depends_on     = [module.tusharRGsm]
  source         = "../05.Vnet"
  tusharVnetsvar = var.tusharvnetvarsm
}

module "tusharSubnetM" {
  depends_on        = [module.tusharVnetM]
  source            = "../06.Subnet"
  tusharSubnetsvars = var.tusharsubnetvarsM
}

module "tusharPublicIpM" {
  depends_on          = [module.tusharRGsm]
  source              = "../07.Public_IP"
  tusharpublicipsvars = var.tusharpublicvarsM
}

module "tusharNicM" {
  depends_on          = [module.tusharPublicIpM, module.tusharSubnetM]
  source              = "../08.NIC"
  tusharnicsvar       = var.tusharnicsvarsM
  tusharpublicipsvars = var.tusharpublicvarsM
  tusharSubnetsvars   = var.tusharsubnetvarsM
}

module "tusharkeyvaultsM" {
  depends_on     = [module.tusharRGsm]
  source         = "../09.KeyVault"
  tusharkeysvars = var.tusharkeyvaultsvarM
}

module "tusharsecretsM" {
  depends_on         = [module.tusharkeyvaultsM]
  source             = "../10.Secret_KV_Generate"
  tusharkeysvars     = var.tusharkeyvaultsvarM
  tusharkvsecretsvar = var.tusharkvsecretvarsM
}

module "tusharlinuxvmM" {
  depends_on         = [module.tusharNicM, module.tusharsecretsM, module.tusharSubnetM]
  source             = "../11.VM"
  tusharkeysvars     = var.tusharkeyvaultsvarM
  tusharnicsvar      = var.tusharnicsvarsM
  tusharkvsecretsvar = var.tusharkvsecretvarsM
  tusharlinuxvmvars  = var.tusharlinuxvmvarsM
}

module "tushabastionM" {
  depends_on = [module.tusharlinuxvmM]
  source     = "../12.Bastion"
}


# module "tusharlbM" {
#   depends_on        = [module.tusharlinuxvmM]
#   source            = "../13.Load_Balancer"
#   tusharprivateiplb = var.tusharlinuxvmvarsM
# }

module "tusharappgateway" {
  depends_on = [module.tusharSubnetM]
  source     = "../14.Application_Gateway"
  tusharnicsvar = var.tusharnicsvarsM
}
