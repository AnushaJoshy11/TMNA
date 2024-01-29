# Set environment-wide variables. These are automatically pulled in to configure parameters.
# Please see the list of approved environments here: https://confluence.sdlc.toyota.com/pages/viewpage.action?spaceKey=TCPT&title=Approved+environments
locals {
  environment = "qa"
  # DNS domain to be used for the environment. The domain should be delegated to your AWS account, please request from Advanced_Cloud_Engineering@toyota.com <Advanced_Cloud_Engineering@toyota.com> if you don't have one
  route53_zone_name = ""
  # VPC ID to be used for this environment
  vpc_id            = ""
}
