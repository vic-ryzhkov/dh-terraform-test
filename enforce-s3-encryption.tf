# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "4.57.0"
#     }
#   }
# }

## AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_PROFILE, AWS_CONFIG_FILE, AWS_SHARED_CREDENTIALS_FILE
provider "aws" {

}

resource "aws_s3_bucket" "mybucket" {
  bucket_prefix = "test-bucket-eks-cluster-"
}


resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.mybucket.id
  
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }

}

