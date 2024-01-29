variable "bundle_id" {
  type        = string
  description = "The ID of the WorkSpaces bundle to use"
}
 
variable "directory_id" {
  type        = string
  description = "The ID of the directory for the WorkSpaces"
}
 
variable "username" {
  description = "The user name of the user for the WorkSpace"
  type        = string
}
 
variable "root_volume_encryption_enabled" {
  description = "Indicates whether the data stored on the root volume is encrypted"
  type        = bool
  default     = false
}
 
variable "user_volume_encryption_enabled" {
  description = "Indicates whether the data stored on the user volume is encrypted"
  type        = bool
  default     = false
}

variable "volume_encryption_key" {
  type        = string
  description = "kms key used to encrypt data stored on your WorkSpace"
  default     = null
}

variable "compute_type_name"{
  type        = string
  description = "The compute type of workspace"  
  validation {
    condition     = contains(["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"], var.compute_type_name)
    error_message = "Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO, GRAPHICS_G4DN, and GRAPHICSPRO_G4DN."
  }
}

variable "user_volume_size_gib"{
  type        = number
  description = "The size of the user storage"   
}

variable "root_volume_size_gib"{
  type        = number
  description = "The size of the root volume"   
}

variable "running_mode"{
  type        = string
  description = "The running mode"  
  validation {
    condition     = contains(["AUTO_STOP", "ALWAYS_ON"], var.running_mode)
    error_message = "Valid values are AUTO_STOP and ALWAYS_ON."
  }
}

variable "running_mode_auto_stop_timeout"{
   type       = number
   description= "The time after a user logs off when WorkSpaces are automatically stopped"
   default    = 60
}

variable "tags"{
  type        = map(string)
  description = "The tags for workspace"  
}
