output "sg_id" {
  value = aws_security_group.sg.id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id_t02" {

value = module.private_subnets.id
}