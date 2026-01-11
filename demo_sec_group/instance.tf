resource "aws_instance" "demo" {
  ami           = "ami-0feaa7c0925bddff3"
  instance_type = "t2.micro"
  # VPC subnet
  subnet_id = aws_subnet.vpc-main-public1.id
  # security group
  vpc_security_group_ids = [aws_security_group.security-group1.id]
  # public SSH key
  key_name = aws_key_pair.vpckeypair.key_name
  depends_on    = [aws_key_pair.vpckeypair]
}

