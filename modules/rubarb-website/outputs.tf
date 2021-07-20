output "website_endpoint" {
  description = "The public url of this website."
  value = "${aws_s3_bucket.rubarb_site.website_endpoint}"
}
