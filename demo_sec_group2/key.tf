resource "aws_key_pair" "vpckeypair" {
  key_name   = "vpckeypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

