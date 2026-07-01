terraform {
  backend "s3" {
    bucket       = "rajesh-terraform-state-12345"
    key          = "eks-from-scratch/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}