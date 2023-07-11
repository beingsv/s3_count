resource "aws_s3_bucket" "practice-s3" {
  count = length(var.bucket-name)
  bucket = var.bucket-name[count.index]
  tags = var.shiwam-tags

}

resource "aws_s3_bucket_acl" "practice-s3" {
  count = length(var.bucket-name)
  depends_on = [aws_s3_bucket.practice-s3]

  bucket = aws_s3_bucket.practice-s3[count.index].id
  acl    = var.acl
}