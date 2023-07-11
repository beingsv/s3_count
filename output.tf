output "s3-output" {
  #single resource
  /* value = aws_s3_bucket.practice-s3.id */
  
  #we can't use count loopin output so we use for
  value = [for a in aws_s3_bucket.practice-s3: a.id]

}