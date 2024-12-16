provider "aws" {
  region = "us-east-1"  # Specify the AWS region where you want to create the bucket
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "ansh692test1986"  # Specify your bucket name
  acl    = "private"  # Access control list for the bucket (private, public-read, public-read-write, etc.)


   tags = {
    Name        = "MyBucket"
    Environment = "Production"
   }
}
