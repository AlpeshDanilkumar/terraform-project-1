provider "aws" {
  region = "eu-west-2"  # Change this to your desired region
}

terraform {
  backend "s3"{
    bucket = "aldan-statebackend-terraform"
    dynamodb_table = "state-lock"
    key = "global/mystatefile/terraform.tfstate"
    region = "eu-west-2"
    encrypt = true
}
}