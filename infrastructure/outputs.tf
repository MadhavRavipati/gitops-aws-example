output "website_url" {
  description = "URL of the S3 website"
  value       = "http://${aws_s3_bucket.website.bucket}.s3-website-${aws_s3_bucket.website.region}.amazonaws.com"
}