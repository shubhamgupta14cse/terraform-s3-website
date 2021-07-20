provider "aws" {
  region = "ap-south-1"
}

module "rubarb-website" {
  source = "../../modules/rubarb-website"

  bucket_name = "rubarb-website-bucket"
}

output "website_endpoint" {
  value = module.rubarb-website.website_endpoint
}
