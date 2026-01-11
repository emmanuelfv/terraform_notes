resource "aws_key_pair" "myfirstkey" {
  key_name   = "myfirstkey"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

