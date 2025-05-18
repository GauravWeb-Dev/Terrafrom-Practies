provider "aws" {
  region = "ap-south-1"

}

resource "aws_s3_bucket" "mybucket"{
    bucket = "aws-s3-bucket-app-gaurav"
}
