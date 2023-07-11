# module "vpc" {
#   source = "terraform-aws-modules/vpc/aws"
#    version = "5.0.0"

#   name = "my-vpc"
#   cidr = "10.0.0.0/16"

#   azs             = ["${var.region}a", "${var.region}b"]
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
#   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

#   enable_nat_gateway = false
#   enable_vpn_gateway = false

#   tags = {
#     Terraform = "true"
#     Environment = "test"
#     Creator = "Bohdan"
#   }
# }

# resource "aws_security_group" "sg-t02" {
#   vpc_id = "09927f9e3fba4eb1e"
#   name        = "sg_for_my_ec2s"
#   description = "security group for ICMP and all egress traffic"

#  ingress {
#     from_port   = -1
#     to_port     = -1
#     protocol    = "icmp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# module "private_subnets" {
#   source  = "claranet/vpc-modules/aws//modules/private-subnets"
#   version = "0.4.0"

#   vpc_id             = 09927f9e3fba4eb1e
#   cidr_block         = "10.0.2.0/24"
#   subnet_count       = 1
#   availability_zones = ["us-east-2a"]
# }