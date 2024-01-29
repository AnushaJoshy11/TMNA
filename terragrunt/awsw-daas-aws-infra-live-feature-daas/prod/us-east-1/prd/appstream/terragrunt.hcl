terraform {
  source = "git@github.com:Toyota-Motor-North-America/awsw-daas-aws-modules.git//appstream?ref=master"  
}

include {
  path = find_in_parent_folders()
}

locals {
  global_vars      = read_terragrunt_config(find_in_parent_folders("global.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  environment_vars = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  name_prefix      = local.global_vars.locals.name_prefix
  environment      = local.environment_vars.locals.environment
  aws_region_cd    = local.region_vars.locals.aws_region_cd
  application_name = local.global_vars.locals.application_name
  aws_region       = local.region_vars.locals.aws_region

}
inputs = {

    fleet_type = "ON_DEMAND"    
    image_name = "FinalImage-12-14"
    instance_type = "stream.standard.xlarge"    
    stream_view = "DESKTOP"    
    aws_appstream_fleet = "ChoferNucleusStreamFleet"    
    desired_instances = 35  
    description = "Chofer NucleusStream for CallCenter Users"    
    idle_disconnect_timeout_in_seconds = 3600    
    disconnect_timeout_in_seconds = 1800    
    display_name = "ChoferNucleusStreamFleet"    
    enable_default_internet_access = "false"    
    max_user_duration_in_seconds = 57600    
    
    directory_name = "tmm.na.corp.toyota.com"    
    organizational_unit_distinguished_name = "OU=AppStream-Prod,OU=Enterprise (Virtual Desktop),OU=Domain Workstations,DC=tmm,DC=na,DC=corp,DC=toyota,DC=com"
      

    subnet_ids         = ["subnet-0906c809396b357f2", "subnet-06b49dccae2018bcf"]
    security_group_ids = ["sg-01a401ab5dd24873d"]


    ################Stack Configuration#########
    
    stack_name = "ChoferNucleusStreamStack"    
    stack_description = "ChoferNucleusStreamStack"    
    stack_display_name = "ChoferNucleusStreamStack"
    application_setting_enabled        = true
    application_settings_group = "callcentre"

}
