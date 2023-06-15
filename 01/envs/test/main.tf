resource "aws_instance" "ec2_01" {
  ami           = "ami-092b51d9008adea15"
  instance_type = "t3.micro"
  iam_instance_profile = "AmazonSSMRoleForInstancesQuickSetup"
#   security_groups = "dfwwwef"
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]

  associate_public_ip_address = true
  subnet_id = "${element(module.vpc.public_subnets, 0)}"

  tags = {
    Terraform = "true"
    Environment = "test"
    Creator = "Bohdan"
  }
}
