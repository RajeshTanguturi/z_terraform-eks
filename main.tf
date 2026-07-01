module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = "10.0.0.0/16"
  public_subnets     = ["10.0.0.0/24", "10.0.1.0/24"]
  private_subnets    = ["10.0.10.0/24", "10.0.11.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  cluster_name       = var.cluster_name
}

module "eks" {
  source = "./modules/eks"

  cluster_name       = var.cluster_name
  private_subnet_ids = module.vpc.private_subnet_ids
}