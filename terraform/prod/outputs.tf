output "bucket_id" {
  description = "Bucket ID for s3 holding out website files"
  value       = module.prod.bucket_id
}

output "cloudfront_domain_name" {
  description = "Cloudfront domain name"
  value       = module.prod.cloudfront_domain_name
}

output "cloudfront_dist_id" {
  description = "Cloudfront distribution id"
  value       = module.prod.cloudfront_dist_id
}
