# Set global project-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
    # REQUIRED
    name_prefix              = "AWS-Workspace" # Please use the same name_prefix that was used to create these accounts; generally, this is the application abbreviation from CMDB.
                                  # This is a constant and should not be modified
                                  # Best practice is to use all lower-case, no spaces, and no special characters;
                                  # A dash would be used as an EXCEPTION basis if needed to make the value unique.

    application_id           = "awsw"
    application_name         = "awsw"

}
