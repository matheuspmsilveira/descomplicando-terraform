provider "aws" {
  region  = "us-east-1"
}

provider "aws" {
  alias  = "west"
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-xassala-tfstates"
    dynamodb_table = "terraform-state-lock-dynamo"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
