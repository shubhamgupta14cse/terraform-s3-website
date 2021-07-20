resource "aws_s3_bucket" "rubarb_site" {
  bucket = "${var.bucket_name}"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}

resource "aws_s3_bucket_object" "index" {
  bucket       = "${aws_s3_bucket.rubarb_site.bucket}"
  key          = "index.html"
  source       = "html/index.html"
  content_type = "text/html"
  acl          = "public-read"
}

resource "aws_s3_bucket_object" "error" {
  bucket       = "${aws_s3_bucket.rubarb_site.bucket}"
  key          = "404.html"
  source       = "html/404.html"
  content_type = "text/html"
  acl          = "public-read"
}
