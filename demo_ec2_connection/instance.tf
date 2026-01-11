resource "aws_instance" "demo" {
    ami = "ami-0feaa7c0925bddff3"
    instance_type = "t2.micro"
    key_name = "myfirstkey"
    tags = {
         name = "demo_ec2_connect"
    }
}

