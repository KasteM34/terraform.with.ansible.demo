terraform {
  backend "s3" {
    bucket = "demo-absa"
    key    = "tfstate/demo.tfstate"
    region = "eu-west-1"
  }
}
