output "public_subnet_cidrs" {

  value = aws_subnet.public_subnets.*.id
}

output "vpc_security_group_ids" {

  value = aws_security_group.main.id
}