provider "aws" {
  region = "ap-south-1"

}

resource "random_id" "random_id" {
  byte_length = 8
}

resource "aws_s3_bucket" "webapp-bucket"{
    bucket = "mywebapp-bucket-${random_id.random_id.hex}"
}


resource "aws_s3_object" "bucket_data" {
    bucket = aws_s3_bucket.mywebapp-bucket.bucket
    source = "index.html"
    key  = "index.html"

}

resource "aws_s3_object" "bucket_data" {
    bucket = aws_s3_bucket.mywebapp-bucket.bucket
    source = "style.css"
    key  = "style.css"

}



output "random_id" {
  value = random_id.random_id.hex
}