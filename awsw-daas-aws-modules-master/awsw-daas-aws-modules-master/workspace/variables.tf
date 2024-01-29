variable "workspace_application_id" {
  type        = string
  description = "Application ID as per CMDB"
}

variable "workspace_application_name" {
  type        = string
  description = "Name of Application as per CMDB"
}

variable "workspace_created_by_email" {
  type        = string
  description = "Toyota email of the person who creates resource."
  #default     = "remya.ramakrishnan@toyota.com"
}

variable "environment" {
  type        = string
  description = "Environment abbreviation of resource."
}

variable "ws_users" {
  description = "List of usernames for the WorkSpaces"
  type        = any
}

variable "ws_bundle_id" {
  type        = string
  description = "The ID of the WorkSpaces bundle to use"
}
 
variable "ws_directory_id" {
  type        = string
  description = "The ID of the directory for the WorkSpaces"
}

variable "ws_root_volume_encryption_enabled" {
  description = "Indicates whether the data stored on the root volume is encrypted"
  type        = bool
}
 
variable "ws_user_volume_encryption_enabled" {
  description = "Indicates whether the data stored on the user volume is encrypted"
  type        = bool
}

variable "ws_user_volume_size"{
  default     = 50
  type        = number
  description = "The size of the user storage"   
}

variable "ws_root_volume_size"{
  default     = null
  type        = number
  description = "The size of the root volume"   
}

variable "ws_volume_encryption_key" {
  type        = string
  description = "kms key used to encrypt data stored on your WorkSpace"
}

variable "ws_compute_type_name"{
  type        = string
  description = "The compute type of workspace"  
  validation {
    condition     = contains(["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"], var.ws_compute_type_name)
    error_message = "Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO, GRAPHICS_G4DN, and GRAPHICSPRO_G4DN."
  }
}

variable "ws_running_mode"{
  type        = string
  description = "The running mode"  
  validation {
    condition     = contains(["AUTO_STOP", "ALWAYS_ON"], var.ws_running_mode)
    error_message = "Valid values are AUTO_STOP and ALWAYS_ON."
  }
}

variable "ws_tags"{
  type        = map(string)
  description = "The tags for workspace"  
#  default ={}
}
 
