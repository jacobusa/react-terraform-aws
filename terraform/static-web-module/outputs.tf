output "bucket_name" {
  value = aws_s3_bucket.web_bucket
}

output "region" {
  value = var.region
}

output "domain_name" {
  value = var.domain_name
}

output "cloudfront_domain_name" {
  description = "Cloudfront domain name"
  value       = aws_cloudfront_distribution.cf_distribution.domain_name
}

output "cloudfront_dist_id" {
  description = "Cloudfront distribution id"
  value       = aws_cloudfront_distribution.cf_distribution.id
}
