output "public_subnet_cidrs" {

  value = module.vpc.public_subnet_cidrs
}

output "vpc_security_group_ids" {

  value = module.vpc.vpc_security_group_ids
}
