_THIS IS A SUPPLIMENTARY COPY OF [AWS-INFRA-LIVE Documentation](https://github.com/Toyota-Motor-North-America/ace-aws-infra-live)_

# TMNA Terragrunt Infrastructure Live Template Repository

![MaintainedByTMNA](https://img.shields.io/badge/Maintained%20by-TMNA-red)
![TemplateVersion](https://img.shields.io/badge/Version-v1.0.0-green)

This repo contains the TMNA standard Terragrunt infrastructure live repository structure to deploy Terraform modules with TMNA cloud best practices.
If you are looking for an infrastructure solution, it is recommended to check the [list of existing and planned Architecture Blueprints](https://confluence.sdlc.toyota.com/pages/viewpage.action?spaceKey=TCPT&title=Architecture+Blueprint+Status) and use those if there is an Architecture Blueprint matching your requirements. If there is not - please let us know.
Modules in this repository are designed to be used in Architecture Blueprints and can be used in custom solutions.

## Table of Contents

* [Features](#features)
* [Learn](#learn)
* [Deploy](#deploy)
* [Manage](#manage)

## Features

* TMNA standardized Terragrunt infrastructure live repository template for deploying and managing AWS cloud infrastructure Terraform modules
* Pre-configured with TMNA standards for account-types, environments, regions, and tags
* Pre-configured provider and backend configurations to reduce complexity
* Terraform version file to allow flexibility when deploying through the TDP pipeline

## Learn

NOTE: Some of the TMNA infrastructure modules reference part of [the Gruntwork Infrastructure as Code Library](https://gruntwork.io/infrastructure-as-code-library/),
a collection of reusable, battle-tested, production ready infrastructure code. Local testing may fail if this reference is used in a module. Please
utilize the TMNA TDP Jenkins pipeline to deploy the infrastructure. [TDP Pipelines](https://confluence.sdlc.toyota.com/display/TDP/Jenkins+Pipelines)

### Core concepts

* [How to use Terraform as a team](https://blog.gruntwork.io/how-to-use-terraform-as-a-team-251bc1104973): Gruntwork's blog post on using terraform to manage infrastructure as a team. Includes discussion about typical CI/CD workflows for both application code and infrastructure code.
* [Getting started with Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/quick-start/): Terragrunt is a thin wrapper for [Terraform](https://www.terraform.io/) that provides extra tools for keeping your Terraform configurations [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself), working with multiple Terraform modules, and managing remote state.
* [TMNA Britive Documentation](https://confluence.sdlc.toyota.com/pages/viewpage.action?pageId=164044850)
* [TMNA Guardrails](https://confluence.sdlc.toyota.com/display/TCPT/Guardrails)
* [Gruntwork Security Best Practices](https://docs.google.com/document/d/1EgbaK7z322hk0Nc-7oZeaemkNYTScQJx1byNqrMcSqI/edit?usp=sharing)
* [What should every programmer know about security?](http://stackoverflow.com/questions/2794016/what-should-every-programmer-know-about-security)

### Repo organization

This repo contains terraform modules adhering to TMNA standards for cloud infrastructure. The modules are grouped based on their function category. Modules are standalone and can be deployed individually. Some modules integrate multiple modules to deploy a pre-built architecture. Modules contain a main.tf, variables.tf, and outputs.tf. A testing folder with a `terragrunt.hcl` file can be used for local testing. A template folder with a `terragrunt.hcl` file has the baseline configuration code listing the required and optional variables.

* link:/_template[template]: TMNA standard template for creating a new module.
* [(root) terragrunt](./terragrunt.hcl): Root terragrunt file to consolidate all of the inputs from other files, generate provider configuration, and generate backend configuration files.
* [global](./global.hcl): Global file to configure parameters for common variables shared across accounts. This includes the application / team's name prefix and other standard tags for billing and monitoring.
* [terraform-version](./.terraform-version): Terraform version file to specify the Terraform version used across all modules and resources in the repository. The file is automatically used when running through the TDP pipeline.
* TMNA standard account-types:
  * [sandbox](./sandbox/account.hcl): folder representing a Sandbox AWS account
  * [nonprod](./nonprod/account.hcl): folder representing a NonProd AWS account
  * [prod](./prod/account.hcl): folder representing a Production AWS account
    * [account](./sandbox/account.hcl): standard file to specify your AWS Account ID and account-type.
    * [_global](./sandbox/_global): folder representing AWS global resources or resources shared across environments within the account. Environment is set to account-type under this folder and region is set to the default region based on account-type.
    * [region](./sandbox/us-west-2/region.hcl): folder with the region configured by default from TMNA standard regions for account types representing AWS resources deployed in a region; ex: us-west-2 or us-east-1. The `region.hcl` file sets the variable for the region and region code.
      * [environment](./sandbox/us-west-2/poc/environment.hcl): folder with the environment code configured by default from the TMNA standard environments for account types; the `environment.hcl` file sets the variable for the environment.
        * [module group](./sandbox/us-west-2/poc/example-group): folder grouping modules following the same grouping in the [ace-aws-infra-modules](https://github.com/Toyota-Motor-North-America/ace-aws-infra-modules) repo.
          * [module name](./sandbox/us-west-2/poc/example-group/example-module/terragrunt.hcl) folder with a Terragrunt file to configure the module to be deployed.

### How do you use a module?

Most modules contain either:

1. [Terraform](https://www.terraform.io/) code
1. Scripts & binaries

TMNA users will leverage modules provided by the Advanced Cloud Engineering (ACE) team in this repo through the TDP pipeline rather than directly consuming modules. These
modules implement TMNA standards and guardrails to increase the speed of delivery and security compliance for experience teams.

### Using the TDP Pipeline

[Please see Terraform Standalone for Terragrunt](https://confluence.sdlc.toyota.com/display/TDP/Jenkins+Pipelines)

Only one child Terragrunt file module will be deployed at a time. The module path is the relative path of the target child module and will only deploy the target; this will directly affect other child Terragrunt files you may have.

### Using a Terraform Module

Please see the available **[TMNA Standard Modules](https://github.com/Toyota-Motor-North-America/ace-aws-infra-modules)**

Please see the available **[TMNA Standard Blueprints](https://github.com/Toyota-Motor-North-America/ace-tech-docs/tree/master/docs/blueprints)**

To use a module in this repo, create a `terraform` block and set its `source` field to the Git URL of the target repo. You should also set the `ref` parameter so you're fixed to a specific version of the repo, as the `master` branch may have backwards incompatible changes (see [module sources](https://www.terraform.io/docs/modules/sources.html)).

Please see the [example-module](./sandbox/us-west-2/poc/example-group/example-module/terragrunt.hcl) for further details.

For example, to use `v0.1.0` of the vpc-app module, you would add the following:

```hcl
terraform {
  source = "git::git@github.com:Toyota-Motor-North-America/ace-aws-infra-modules.git//networking/vpc-app?ref=v0.1.0"
}

inputs {
  // set the parameters for the vpc-app module
}
```

**Note**: the double slash (`//`) is intentional and required. It's part of Terraform's Git syntax (see [module sources](https://www.terraform.io/docs/modules/sources.html)).

See the module's documentation and `variables.tf` file for all the parameters you can set. Run `terraform get -update` to
pull the latest version of this module from this repo before running the standard `terraform plan` and `terraform apply` commands.

### Using a Terraform module with Terragrunt

NOTE: Visit [Getting Started with Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/quick-start/) to read the full documentation. Reference this [ace-aws-infra-live](https://github.com/Toyota-Motor-North-America/ace-aws-infra-live) repo as a template and to understand how to deploy Terraform modules using Terragrunt.

### What is a Gruntwork module?

[Gruntwork](http://www.gruntwork.io) has taken the thousands of hours spent building infrastructure on AWS and
condensed all that experience and code into pre-built **packages** or **modules**. Each module is a battle-tested,
best-practices definition of a piece of infrastructure, such as a VPC, ECS cluster, or an Auto Scaling Group. Modules
are versioned using [Semantic Versioning](http://semver.org/) to allow Gruntwork clients to keep up to date with the
latest infrastructure best practices in a systematic way.

### Using scripts & binaries

You can install the scripts and binaries in the `modules` folder of any repo using the [Gruntwork
Installer](https://github.com/gruntwork-io/gruntwork-installer). For example, if the scripts you want to install are
in the `modules/ecs-scripts` folder of the [module-ecs](https://github.com/gruntwork-io/module-ecs) repo, you could install them
as follows:

```bash
gruntwork-install --module-name "ecs-scripts" --repo "https://github.com/gruntwork-io/module-ecs" --tag "0.0.1"
```

See the docs for each script & binary for detailed instructions on how to use them.

## Deploy

### Production-ready modules

If you want to deploy this repo, check out the following resources:

* Review the `template/terragrunt.hcl` file of the module you want to use from the [TMNA Standard Modules](https://github.com/Toyota-Motor-North-America/ace-aws-infra-modules) or [TMNA Standard Blueprints](https://github.com/Toyota-Motor-North-America/ace-tech-docs/tree/master/docs/blueprints).
* [Template Repository ace-aws-infra-live](https://github.com/Toyota-Motor-North-America/ace-aws-infra-live/): Template Terragrunt repository used to deploy and configure TMNA standard
modules and blueprints for experience teams. The enterprise DevOps pipeline is used for triggering a deployment and will deploy resources into an AWS account based on the source and configured variables in the configuration file.

### Quick-Start

Use this template [ace-aws-infra-live](https://github.com/Toyota-Motor-North-America/ace-aws-infra-live) to create a new repository in your team's Github repositories ([See Getting Onboarded to DevOps Platform](https://confluence.sdlc.toyota.com/display/TDP/Getting+Onboarded+to+DevOps+Platform) and [Github Getting Started](https://confluence.sdlc.toyota.com/pages/viewpage.action?pageId=164048488)).

Copy the `terragrunt.hcl` file located in the template folder of the module you wish to use from [ace-aws-infra-modules](https://github.com/Toyota-Motor-North-America/ace-aws-infra-modules) and paste it in your `aws-infra-live` repository. Create a folder structure following the modules pattern. Add parameter values for the required and optional variables, if needed.

Example relative path: `team-aws-infra-live/sandbox/us-west-2/networking/vpc-app`

### Walk-Through

First, create the module group and module folders under the target account, region, and environment folders, such as `team-aws-infra-live/sandbox/us-west-2/poc/example-group/example-module`
Then create one child `terragrunt.hcl` file in the desired module folder, such as 'vpc', as an example. This file will generally contain four blocks: `include` to include the root `terragrunt.hcl` configuration, `terraform` to specify the source module,`inputs` to provide parameter values, (optionally) local to initialize local variables, and (optionally) dependencies to specify dependencies with other modules in this repo.

```hcl
# team-aws-infra-live/nonprod/_global/networking/vpc-app/terragrunt.hcl

terraform {
  source = "git::git@github.com:Toyota-Motor-North-America/ace-aws-infra-modules.git//networking/vpc-app?ref=v0.1.0"
}

locals {}

include {
  path = find_in_parent_folders()
}

inputs = {
    vpc_name = "vpc-app"
}
```

When using *Terragrunt*, deploy by running the commands `terragrunt init`, `terragrunt plan`, and `terragrunt apply` from the child `terragrunt.hcl` file.

## Manage

1. Create a new `feature` branch from the `master` branch
1. Add a child Terragrunt file, such as `team-aws-infra-live/sandbox/us-west-2/poc/example-group/example-module/terragrunt.hcl`; use the template/terragrunt.hcl file from the source module as a quick-start.
1. Configure the Terragrunt file with the required values
1. Push the changes to the remote GitHub repository
1. Run a `terragrunt plan` on the `feature` branch using the TDP pipeline to validate proper values were supplied
1. Submit a `Pull Request` to the `master` branch --> peer reviewed and approved
1. After approval, merge the `Pull Request` to the `master` branch
1. Deploy the target Terragrunt file from the `master` branch using the TDP pipline (deployTerraform(Standalone))

* As changes need to be made, start this process over; the Terraform state is maintained in AWS S3 and will handle updating the infrastructure in place or destroying and re-creating the resources, as required.
* Use the TDP pipeline using the `destroy` option to destroy, or delete, the resources from the target module.

### Branching Strategy

* The DevOps [Trunk Based Development](https://trunkbaseddevelopment.com/) strategy is the recommended approach for this repository
* Only deploy the infrastructure from the master branch
* The repository structure represents what infrastructure is in which AWS account, region, and environment

### Best Practices

* TMNA standard modules are fully tested before being released to customers. If a team desires to test modules themselves, it is recommended to test the infrastructure using the Toyota DevOps Platform. [Please see Terraform Standalone for Terragrunt](https://confluence.sdlc.toyota.com/display/TDP/Jenkins+Pipelines) for more details. Deployment to NonProd or Production accounts **requires** deployment through the TDP pipelines.
* Reference a specific version in the Terraform source, ex: `?ref=v1.0.0`
* Use the dependencies block where possible to pass parameters from one module to another

### Gotchas

* Be sure to configure the variables to the global and account hcl files before attempting to deploy from the repo
* If a TMNA source module references a Gruntwork module, a local init, plan, or apply will fail due to lack of access to the license; please use the TDP pipeline 
* Be mindful of the Terraform version constraints in the provider block of the source module as your Terraform version may be higher than the constraint allows. Use the `.terraform-version` file to specify a specific version and be consistent across all modules and developers. The TDP pipeline handles this file by default.
* If you are running a Terragrunt init or plan for the first time locally, the console will ask you if you would like an S3 bucket to be created to store the state; please ensure the global `name_prefix` value is correct before continuing.
* `name_prefix` is a standard, unique value specified during the CCoE intake process, related to the CMDB CI for this account; it is provided during account creation as some need to be modified to fit the standard or ensure uniqueness. Please be sure not to modify this value once set.
