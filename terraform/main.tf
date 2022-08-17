module "vpc" {
    source = "git@github.com:isakzhanovaibek/terraform-modules.git//vpc"
    
}

module "eks" {
  source  = "git@github.com:isakzhanovaibek/terraform-modules.git//eks"
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
}