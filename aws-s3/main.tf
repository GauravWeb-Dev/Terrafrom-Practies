provider "aws" {
  region = "ap-south-1"

}

resource "random_id" "random_id" {
  byte_length = 8
}

resource "aws_s3_bucket" "mybucket"{
    bucket = "mybucket-${random_id.random_id.hex}"
}


resource "aws_s3_object" "bucket_data" {
    bucket = aws_s3_bucket.mybucket.bucket
    source = "myfile.txt"
    key  = "mydata.txt"
}

output "random_id" {
  value = random_id.random_id.hex
}