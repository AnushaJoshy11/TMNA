# Set global project-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
    # REQUIRED
    name_prefix                 = "awsdaas" # Please use the same name_prefix that was used to create these accounts; generally, this is the application abbreviation from CMDB.
                                  # This is a constant and should not be modified
                                  # Best practice is to use all lower-case, no spaces, and no special characters;
                                  # A dash would be used as an EXCEPTION basis if needed to make the value unique.
    application_id              = "awsw"
    application_name            = "awsw"
    workspace_application_id    = "APM0005548"
    workspace_application_name  = "Chofer NucleusDesk"
    workspace_created_by_email  = "remya.ramakrishnan@toyota.com"

    appstream_application_id    = "APM0005548"
    appstream_application_name  = "Chofer NucleusStream"
    appstream_created_by_email  = "anusha.joshy@toyota.com"
}
