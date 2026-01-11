terraform {
        backend "s3" {
        bucket = "SOMEBUCKETNAME"
        key="state/terraform.tfstate"
        region="us-east-1"
        }
}

