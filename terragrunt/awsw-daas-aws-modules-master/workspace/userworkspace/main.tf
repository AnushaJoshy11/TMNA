locals {
  running_mode_auto_stop_timeout = var.running_mode == "ALWAYS_ON" ? null : var.running_mode_auto_stop_timeout
}
resource "aws_workspaces_workspace" "workspace" {
  directory_id = var.directory_id
  bundle_id    = var.bundle_id
  user_name    = var.username 

  root_volume_encryption_enabled = var.root_volume_encryption_enabled
  user_volume_encryption_enabled = var.user_volume_encryption_enabled
  volume_encryption_key          = var.volume_encryption_key

  workspace_properties {
    compute_type_name                         = var.compute_type_name 
    user_volume_size_gib                      = var.user_volume_size_gib
    root_volume_size_gib                      = var.root_volume_size_gib
    running_mode                              = var.running_mode  
    running_mode_auto_stop_timeout_in_minutes = local.running_mode_auto_stop_timeout
  }

  tags = var.tags
}

