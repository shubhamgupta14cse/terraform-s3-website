# Rubarb Terraform AWS S3 Static Website

A Sample Terraform module by Shubham Gupta to publishing static websites on AWS S3. 

## Getting Started

- #### Install Terraform

- #### Set up your AWS profile

- #### go to the `deploy/rubarb-s3-website` directory and run

```
terraform init
```

``` 
terraform apply 
```

## Inputs

**bucket_name**: The name of the AWS S3 bucket this website will be published to.

## Outputs

**website_endpoint**: The public url of this website.
