module "rgmodule" {
  source = "../../module/resource_group"
  rg5    = var.rg5

}

module "vnetmodule" {
  source     = "../../module/networking"
  depends_on = [module.rgmodule]
  vnets      = var.vnets

}

module "pipmodule" {
  source     = "../../module/PIP"
  depends_on = [module.rgmodule]
  pips       = var.pips

}

module "nicmodule" {
  source     = "../../module/nic"
  depends_on = [module.rgmodule, module.pipmodule,module.vnetmodule]
  nics       = var.nics

}

module "vmmodule" {
  source     = "../../module/vm"
  depends_on = [module.rgmodule, module.nicmodule]
  vms        = var.vms

}
