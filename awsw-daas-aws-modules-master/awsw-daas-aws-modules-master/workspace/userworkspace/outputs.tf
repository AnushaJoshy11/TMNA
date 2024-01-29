output "workspace_id"{
  description = "The workspaces ID"
  value       = aws_workspaces_workspace.workspace.id
}

output "workspace_ip_address"{
  description = "The IP address of the WorkSpace"
  value       = aws_workspaces_workspace.workspace.ip_address
}

output "workspace_computer_name"{
  description = "The name of the WorkSpace, as seen by the operating system"
  value       = aws_workspaces_workspace.workspace.computer_name
}

output "workspace_state"{
  description = "The operational state of the WorkSpace"
  value       = aws_workspaces_workspace.workspace.state
}
