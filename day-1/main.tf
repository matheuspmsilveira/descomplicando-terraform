provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-xassala-tfstates"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
