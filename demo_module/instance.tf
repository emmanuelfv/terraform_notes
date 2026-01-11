module "ec2_instance"{
  source = "../terraform_demos/modules/ec2_instance"
  AWS_REGION = "us-east-1"
  AWS_AMI = "ami-0feaa7c0925bddff3"
}

