module "vpc" {
  source = "./modules/vpc"

  cidr_block           = "10.0.0.0/16"
  Name                 = "Prod env"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  azs                  = ["us-east-1a", "us-east-1b", "us-east-1c"]

}

module "ec2" {
  source                 = "./modules/ec2"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0deed5561f3738b6c"
  key_name               = "linux-devops"
  vpc_security_group_ids = [module.vpc.vpc_security_group_ids]

}