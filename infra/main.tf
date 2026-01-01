module "vpc" {
  source       = "./modules/vpc"
  network_name = var.network_name
}

module "subnet" {
  source       = "./modules/subnet"
  network_name = module.vpc.network_name
  region       = var.region
  subnet_cidr  = var.subnet_cidr
}

module "firewall" {
  source       = "./modules/firewall"
  network_name = module.vpc.network_name
}

module "vm1" {
  source        = "./modules/vm"
  name          = "vm-1"
  machine_type  = var.machine_type
  zone          = var.zone
  image         = var.image
  network       = module.vpc.network_name
  subnet        = module.subnet.subnet_name
}

module "vm2" {
  source        = "./modules/vm"
  name          = "vm-2"
  machine_type  = var.machine_type
  zone          = var.zone
  image         = var.image
  network       = module.vpc.network_name
  subnet        = module.subnet.subnet_name
}
