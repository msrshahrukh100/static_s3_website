provider "aws" {
  alias                       = "main"
  region                      = "ap-south-1"
}

provider "aws" {
  alias                       = "acm_provider"
  region                      = "us-east-1"
}

module "s3-static-website" {
  source  = "cn-terraform/s3-static-website/aws"
  version = "0.0.18"
  providers = {
    aws.main         = aws.main
    aws.acm_provider = aws.acm_provider
  }
  name_prefix = "s3-website-"
  website_domain_name = "muslimentrepreneurs.space"

  create_route53_hosted_zone = false
  route53_hosted_zone_id = "Z04629671ENZ8H0W1A72L"

  create_acm_certificate     = false
  acm_certificate_arn_to_use = "arn:aws:acm:us-east-1:742270938451:certificate/f825ed1f-5d84-4cb0-9875-dbb7cee04486"
}