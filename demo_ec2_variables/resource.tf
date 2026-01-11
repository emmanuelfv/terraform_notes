resource "aws_instance" "demo2" {
    ami = lookup(var.AMIS,var.AWS_REGION)
    instance_type = "t2.micro"
    # security_groups = var.SEC_GROUPS
}

