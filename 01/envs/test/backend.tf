terraform {
  backend "s3" {
    encrypt=true
    bucket = "tf-state-storage-for-prectice"
    dynamodb_table = "terraform-state-lock-for-prectice"
    key    = "terraform.tfstate"
    region = "us-east-2"
    # access_key = "<aws_access_key>"
    # secret_key = "<aws_secret_key>"
  }
}