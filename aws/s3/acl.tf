resource "aws_s3_bucket_acl" "Example_ACL" {
    bucket = aws_s3_bucket.Example_Bucket.id
    acl = "private"
}