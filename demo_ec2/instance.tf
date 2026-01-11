provider "aws" {
}
resource "aws_instance" "Demo1" {
    ami="ami-068c0051b15cdb816"
    instance_type="t2.micro"
}

