resource "aws_s3_bucket" "Example_Bucket" {
  bucket = "example_terraform_bucket"

  tags {
    Name = "example_terraform_bucket"
  }
}