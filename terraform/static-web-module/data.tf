data "aws_iam_policy_document" "web_s3_policy" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.web_bucket.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.oai.iam_arn]
    }
  }
}
data "aws_acm_certificate" "acm_cert" {
  count    = var.use_default_domain ? 0 : 1
  domain   = var.cert_domain_name
  provider = aws.us-east-1
  //CloudFront uses certificates from US-EAST-1 region only
  statuses = [
    "ISSUED",
  ]
}
