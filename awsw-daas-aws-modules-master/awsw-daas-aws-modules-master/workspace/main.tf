module "workspace" {
  source                         = "./userworkspace"
  for_each                       = var.ws_users
  bundle_id                      = lookup(each.value, "bundle_id", var.ws_bundle_id)
  directory_id                   = var.ws_directory_id
  root_volume_encryption_enabled = var.ws_root_volume_encryption_enabled
  user_volume_encryption_enabled = var.ws_user_volume_encryption_enabled
  volume_encryption_key          = var.ws_volume_encryption_key
  username                       = each.value.username
  compute_type_name              = lookup(each.value, "compute_type_name", var.ws_compute_type_name)
  user_volume_size_gib           = lookup(each.value, "user_volume_size_gib", var.ws_user_volume_size)
  root_volume_size_gib           = lookup(each.value, "root_volume_size_gib", var.ws_root_volume_size)
  running_mode                   = lookup(each.value, "running_mode", var.ws_running_mode)
  running_mode_auto_stop_timeout = lookup(each.value, "running_mode_auto_stop_timeout", 60)
  tags                           = merge(module.standard_tags.tags, lookup(each.value, "tags", {}))
}

module "standard_tags" {
  source = "git@github.com:Toyota-Motor-North-America/ace-aws-infra-modules.git//tagging/tmna-standard-tags?ref=master"
  application_id   = var.workspace_application_id
  application_name = var.workspace_application_name
  created_by_email = var.workspace_created_by_email
  custom_tags      = var.ws_tags
  environment      = var.environment
}
