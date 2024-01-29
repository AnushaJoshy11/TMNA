# Variable for defining the fleet type
variable "fleet_type" {
  description = "The type of Amazon AppStream fleet"
  type        = string
}

# Variable for specifying the name of the custom image
variable "image_name" {
  description = "The name of the custom image to be used for provisioning instances."
  type        = string
}

# Variable for indicating whether to display the stream view
variable "stream_view" {
  description = "Specifies the type of stream view to display"
  type        = string
}

# Variable for specifying the instance type with validation
variable "instance_type" {
  description = "Instance type to use when launching fleet instance."
  type        = string
  validation {
    condition = contains(["stream.standard.small",
      "stream.standard.medium",
      "stream.standard.large",
      "stream.standard.xlarge",
      "stream.standard.2xlarge",
      "stream.compute.large",
      "stream.compute.xlarge",
      "stream.compute.2xlarge",
      "stream.compute.4xlarge",
      "stream.compute.8xlarge",
      "stream.memory.large",
      "stream.memory.xlarge",
      "stream.memory.2xlarge",
      "stream.memory.4xlarge",
      "stream.memory.8xlarge",
      "stream.memory.z1d.large",
      "stream.memory.z1d.xlarge",
      "stream.memory.z1d.2xlarge",
      "stream.memory.z1d.3xlarge",
      "stream.memory.z1d.6xlarge",
      "stream.memory.z1d.12xlarge",
      "stream.graphics-desktop.2xlarge",
      "stream.graphics-desktop.2xlarge",
      "stream.graphics-design.large",
      "stream.graphics-design.xlarge",
      "stream.graphics-design.2xlarge",
      "stream.graphics-design.4xlarge",
      "Graphics Prostream.graphics-pro.4xlarge16122",
      "Graphics Prostream.graphics-pro.8xlarge32244",
      "Graphics Prostream.graphics-pro.16xlarge64488",
      "stream.graphics.g4dn.xlarge",
      "stream.graphics.g4dn.2xlarge",
      "stream.graphics.g4dn.4xlarge",
      "stream.graphics.g4dn.8xlarge",
      "stream.graphics.g4dn.12xlarge",
      "stream.graphics.g4dn.16xlarge",
      "stream.graphics.g5.xlarge",
      "stream.graphics.g5.2xlarge",
      "stream.graphics.g5.4xlarge",
      "stream.graphics.g5.8xlarge",
      "stream.graphics.g5.12xlarge",
      "stream.graphics.g5.16xlarge",
      "stream.graphics.g5.24xlarge"
    ], var.instance_type)
    error_message = "Invalid instance type."
  }
}

#Variable for defining the name of the AppStream fleet
variable "aws_appstream_fleet" {
  description = "The name of the Amazon AppStream fleet. This uniquely identifies the fleet and is used for resource provisioning and management"
  type        = string
}

# Variable for specifying the number of desired instances
variable "desired_instances" {
  description = "The number of the desired instance."
  type        = number
}

# Variable for describing the fleet
variable "description" {
  description = "The description of the fleet."
  type        = string
}

# Variable for specifying the idle disconnect timeout in seconds
variable "idle_disconnect_timeout_in_seconds" {
  description = "The idle disconnect timeout in seconds."
  type        = number
}

# Variable for specifying the disconnect timeout in seconds
variable "disconnect_timeout_in_seconds" {
  description = "The idle disconnect timeout in seconds."
  type        = number
}

# Variable for specifying the display name of the fleet
variable "display_name" {
  description = "The display name of the fleet."
  type        = string
}

# Variable for enabling default internet access
variable "enable_default_internet_access" {
  description = "Enable default internet access"
  type        = string
}

# Variable for specifying the maximum user duration in seconds
variable "max_user_duration_in_seconds" {
  description = "The max_user_duration_in_seconds"
  type        = string
}

# Variable for specifying the name of the directory configuration
variable "directory_name" {
  description = "The name of the directory configuration."
  type        = string
}

# Variable for specifying a list of distinguished names of organizational units in the directory
variable "organizational_unit_distinguished_name" {
  description = "A list of distinguished names of organizational units in your directory."
  type        = string
}

# Variable for specifying a list of subnet IDs
variable "subnet_ids" {
  type        = list(string)
  description = "A list of subnet IDs to associate with the resources."
}

# Variable for specifying a list of security group IDs
variable "security_group_ids" {
  type        = list(string)
  description = "A list of security group IDs to apply to the resources. These security groups define inbound and outbound rules for network traffic"
}

variable "appstream_application_id" {
  type        = string
  description = "Application ID as per CMDB"
}

variable "appstream_application_name" {
  type        = string
  description = "Name of Application as per CMDB"
}

variable "appstream_created_by_email" {
  type        = string
  description = "Toyota email of the person who creates resource."

}

variable "tags" {
  type        = map(string)
  description = "A map of key-value pairs used to custom tags the resources"
  default     = null
}

variable "environment" {
  type        = string
  description = "Environment abbreviation of resource."
}

# Variable for specifying the name of the directory configuration
variable "stack_name" {
  description = "The name of the directory configuration."
  type        = string
}

# Variable for specifying the description of the directory configuration
variable "stack_description" {
  description = "The name of the directory configuration."
  type        = string
}

# Variable for specifying the display name of the directory configuration
variable "stack_display_name" {
  description = "The name of the directory configuration."
  type        = string
}

# Variable for specifying the application_setting
variable "application_setting_enabled" {
  description = "Whether the application is enabled"
  type        = bool

}

variable "application_settings_group" {
  description = "The settings group for the application"
  type        = string

}
