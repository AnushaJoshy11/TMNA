# Output for the unique identifier of the AppStream Fleet
output "fleet_id" {
  value       = aws_appstream_fleet.ChoferNucleusStreamFleet.id
  description = "The unique identifier (ID) of the AWS AppStream Fleet named 'ChoferNucleusStreamFleet'."
}

# Output for the unique identifier of the AppStream Stack
output "stack_id" {
  value       = aws_appstream_stack.ChoferNucleusStreamStack.id
  description = "The unique identifier (ID) of the AWS AppStream Stack named 'ChoferNucleusStreamStack'."
}

# Output for the name of the AppStream Fleet
output "fleet_name" {
  value       = aws_appstream_fleet.ChoferNucleusStreamFleet.name
  description = "The name of the AWS AppStream Fleet, set to the value of the variable 'var.aws_appstream_fleet'."
}

# Output for the name of the AppStream Stack
output "stack_name" {
  value       = aws_appstream_stack.ChoferNucleusStreamStack.name
  description = "The name of the AWS AppStream Stack, set to the value of the variable 'var.stack_name'."
}
