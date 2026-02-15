terraform {
  backend "s3" {
    bucket         = "ajay-devops-tf-state-bucket"
    key            = "autoscaling-project/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
