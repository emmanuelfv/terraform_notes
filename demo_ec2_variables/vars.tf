variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
        type = string
        default = "us-east-1"
}
variable "AMIS" {
        type = map
        default = {
        us-east-1 = "ami-0feaa7c0925bddff3"
        }
}
variable "SEC_GROUPS" {
        type = set(string)
        default = [
         "sg-06b9b65530029957a"
        ]
}
