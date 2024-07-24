module "network" {
  source = "./modules/network"

  vpc_name     = "tf-vpc-dev"
  vpc_cidr     = "10.4.0.0/16"
  network_cidr = "10.4.0.0/24"
  subnet_name  = "tf-subnet-dev"
}

module "security_group" {
  source = "./modules/security_group" 
}

# module "tke" {
#   source = "./modules/tke"
#   sg_id = ""
#   vpc_id = ""
#   subnet_id = ""
# }