# Set region variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
    aws_region    = "us-east-1"
    aws_region_cd = "use1"
}