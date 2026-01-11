provider "aws" {
        region = "us-east-1"
}
resource "aws_instance" "backend_demo" {
    ami = "ami-0feaa7c0925bddff3"
    instance_type = "t2.micro"
}

