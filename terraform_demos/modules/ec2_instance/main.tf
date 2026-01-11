provider "aws" {
    region = var.AWS_REGION
}
resource "aws_instance" "module-demo" {
    ami = var.AWS_AMI
    instance_type = "t2.micro"
}
variable "AWS_REGION" {
}
variable "AWS_AMI" {
}

