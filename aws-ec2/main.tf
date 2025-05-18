provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myserver" {
  ami      = "ami-0af9569868786b23a"
  instance_type = "t2.micro"
  key_name = "Gaurav-key"
}

# provider "aws" {
#     region = "ap-south-1"
# }

# resource "aws_instance" "myserver2" {
#   ami =""
#   instance_type = ""
#   key_name = "Gaurav-key"
#   tags ={
#     Name =""
#   }
#   }