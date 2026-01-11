resource "aws_instance" "Demo" {
        ami="ami-0ecb62995f68bb549"
        instance_type="t2.micro"
        vpc_security_group_ids=[aws_security_group.web-security.id]
        user_data=<<-EOF
                #!/bin/bash
                echo "You are learning Terraform, Have a good day" > index.html
                nohup busybox httpd -f -p 8080 &
                EOF
        tags={
                Name="Demo-SimpleWebServer"
        }
}

