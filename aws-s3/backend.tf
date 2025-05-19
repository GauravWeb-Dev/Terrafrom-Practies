terraform {
  backend "s3" {
   
    bucket = "mybucket-17a3236f903a43da"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }
}