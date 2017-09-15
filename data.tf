data "aws_ami" "amazon_ami" {
  most_recent      = true

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }

  owners     = ["amazon"]
}