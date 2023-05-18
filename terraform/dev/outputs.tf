output "bucket_id" {
  description = "Bucket ID for s3 holding out website files"
  value       = module.dev.bucket_id
}

output "cloudfront_domain_name" {
  description = "Cloudfront domain name"
  value       = module.dev.cloudfront_domain_name
}

output "cloudfront_dist_id" {
  description = "Cloudfront distribution id"
  value       = module.dev.cloudfront_dist_id
}
