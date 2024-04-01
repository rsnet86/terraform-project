provider "aws" {
  region = "us-east-1"  # Specify the AWS region where you want to create the bucket
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "ansh692test1986"  # Specify your bucket name
  acl    = "private"  # Access control list for the bucket (private, public-read, public-read-write, etc.)

  # Uncomment the following if you want to enable versioning for the bucket
  # versioning {
  #   enabled = true
  # }

  # Uncomment the following if you want to enable server-side encryption for the bucket
  # server_side_encryption_configuration {
  #   rule {
  #     apply_server_side_encryption_by_default {
  #       sse_algorithm = "AES256"
  #     }
  #   }
  # }

  # Uncomment the following if you want to add tags to the bucket
   tags = {
    Name        = "MyBucket"
    Environment = "Production"
   }
}
