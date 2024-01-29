###############################################################################
# Appstream 
###############################################################

# AWS AppStream Fleet Resource

resource "aws_appstream_fleet" "ChoferNucleusStreamFleet" {

  name = var.aws_appstream_fleet

  compute_capacity {
    desired_instances = var.desired_instances
  }

  instance_type                 = var.instance_type
  description                   = var.description
  disconnect_timeout_in_seconds = var.disconnect_timeout_in_seconds
  display_name                  = var.display_name

  domain_join_info {
    directory_name                         = var.directory_name
    organizational_unit_distinguished_name = var.organizational_unit_distinguished_name
  }

  enable_default_internet_access     = var.enable_default_internet_access
  fleet_type                         = var.fleet_type
  idle_disconnect_timeout_in_seconds = var.idle_disconnect_timeout_in_seconds
  image_name                         = var.image_name
  stream_view                        = var.stream_view
  max_user_duration_in_seconds       = var.max_user_duration_in_seconds

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  # tags = module.standard_tags.standard-tags

  tags = merge(module.standard_tags.tags, var.tags)
}

######### standars_tags  #####################

module "standard_tags" {
  source = "git@github.com:Toyota-Motor-North-America/ace-aws-infra-modules.git//tagging/tmna-standard-tags?ref=tagging-v2.6.1"

  application_id   = var.appstream_application_id
  application_name = var.appstream_application_name
  created_by_email = var.appstream_created_by_email
  environment      = var.environment

}


# AWS AppStream Stack Resource

resource "aws_appstream_stack" "ChoferNucleusStreamStack" {
  name         = var.stack_name
  description  = var.description
  display_name = var.stack_display_name

  user_settings {
    action     = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"
    permission = "DISABLED"
  }
  user_settings {
    action     = "CLIPBOARD_COPY_TO_LOCAL_DEVICE"
    permission = "DISABLED"
  }
  user_settings {
    action     = "DOMAIN_PASSWORD_SIGNIN"
    permission = "ENABLED"
  }
  user_settings {
    action     = "DOMAIN_SMART_CARD_SIGNIN"
    permission = "DISABLED"
  }
  user_settings {
    action     = "FILE_DOWNLOAD"
    permission = "DISABLED"
  }
  user_settings {
    action     = "FILE_UPLOAD"
    permission = "DISABLED"
  }
  user_settings {
    action     = "PRINTING_TO_LOCAL_DEVICE"
    permission = "DISABLED"
  }

  application_settings {
    enabled        = var.application_setting_enabled
    settings_group = var.application_settings_group
  }

  tags = module.standard_tags.standard-tags

}



# AWS AppStream Fleet-Stack Association Resource

resource "aws_appstream_fleet_stack_association" "fleetstack" {
  fleet_name = aws_appstream_fleet.ChoferNucleusStreamFleet.name
  stack_name = aws_appstream_stack.ChoferNucleusStreamStack.name
}
