terraform {
  source = "git@github.com:Toyota-Motor-North-America/awsw-daas-aws-modules.git//workspace?ref=master"
}

include {
  path = find_in_parent_folders()
}

locals {
  global_vars      = read_terragrunt_config(find_in_parent_folders("global.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  environment_vars = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  name_prefix      = local.global_vars.locals.name_prefix
  environment      = local.environment_vars.locals.environment
  aws_region_cd    = local.region_vars.locals.aws_region_cd
  application_name = local.global_vars.locals.application_name
  aws_region       = local.region_vars.locals.aws_region

}
inputs = {

  # Workspace variable values
  ws_users = {

   583864= {
      username = "583864"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Angela Willingham"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"

      }
    }
    601430= {
      username = "601430"
      tags = {
        "CW-Provider"     = "ALORICA INC"
        "User Manager"    = "Jonathan Howes"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "956409"
      }
    }
    545052= {
      username     = "545052"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    598736= {
      username = "598736"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Amandeep Chanana"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955004"
      }
    }
    156230= {
      username = "156230"
      tags = {
        "CW-Provider"     = "BeyondsoftConsulting_Inc"
        "User Manager"    = "Ben Takahashi"
        "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
        "Cost Center"     = "550267"
      }
    }
    554835= {
      username = "554835"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "N/A"
        "Manager Dept"    = "N/A"
        "Cost Center"     = "N/A"
      }
    }
    581797= {
      username     = "581797"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Patti Dixon"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }
    536295= {
      username     = "536295"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager"    = "Pradeep Chevuri"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    568970= {
      username     = "568970"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    526371= {
      username = "526371"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    556887= {
      username = "556887"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    559143= {
      username     = "559143"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "Beyondsoft Consulting_Inc"
        "User Manager"    = "Ben Takahashi"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955115"
      }
    }
    577851= {
      username = "577851"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Pradeep Chevuri"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    558467= {
      username = "558467"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    587896= {
      username = "587896"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    599580= {
      username = "599580"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    570557= {
      username     = "570557"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Koteswar Rangaraju"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955005"
      }
    }
    595871= {
      username = "595871"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Craig Barney"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    470694= {
      username = "470694"
      tags = {
        "CW-Provider"     = "ALORICA INC"
        "User Manager"    = "Jonathan Howes"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "956409"
      }
    }
    559505= {
      username = "559505"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Angela Willingham"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    576212= {
      username = "576212"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srinivasa Komirisetty"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955090"
      }
    }
    579475= {
      username = "579475"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    568627= {
      username = "568627"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    549912= {
      username     = "549912"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Maz Minoo"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    580966= {
      username     = "580966"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ARCHRONIXINC"
        "User Manager"    = "Alireza Tavassoli"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    407601= {
      username = "407601"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srinivasa Komirisetty"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }
    512911= {
      username = "512911"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Marc Valencia"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    587382= {
      username = "587382"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srini Satrasala"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003"
      }
    }
    541958= {
      username     = "541958"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "Schaefer"
        "User Manager"    = "Matt Tooley"
        "Manager Dept"    = "Toyota Motor Mfg_Indiana_Inc"
        "Cost Center"     = "CJ400"
      }
    }
    578375= {
      username = "578375"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Brian Callahan"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955019"
      }
    }
    580687= {
      username = "580687"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    583613= {
      username = "583613"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srini Satrasala"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003"
      }
    }
    598887= {
      username = "598887"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    401905= {
      username = "401905"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Craig Barney"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    516777= {
      username = "516777"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    458786= {
      username = "458786"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager"    = "Angie Grant"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "956409"
      }
    }
    572994= {
      username     = "572994"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Koteswar Rangaraju"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }
    405942= {
      username = "405942"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Tom Spencer"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955036"
      }
    }
    587461= {
      username = "587461"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srinivasa Komirisetty"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955090"
      }
    }
    526181= {
      username = "526181"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Brian Callahan"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955019"
      }
    }
    592494= {
      username = "592494"
      tags = {
        "CW-Provider"     = "JacobsEngineeringGroupInc"
        "User Manager"    = "Morgan Kennard"
        "Manager Dept"    = "Toyota Motor Engineering and Manufacturing North America_Inc"
        "Cost Center"     = "EV100"
      }
    }
    596424= {
      username     = "596424"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    586854= {
      username = "586854"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srini Satrasala"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003"
      }
    }
    521259= {
      username = "521259"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    454093= {
      username = "454093"
      tags = {
        "CW-Provider"     = "PREMIERSystemIntegrators"
        "User Manager"    = "John Covington"
        "Manager Dept"    = "Toyota Motor Engineering and Manufacturing North America_Inc"
        "Cost Center"     = "AH170"
      }
    }
    524965= {
      username = "524965"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Craig Barney"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    600789= {
      username = "600789"
      tags = {
        "CW-Provider"     = "Rovisys"
        "User Manager"    = "Jesse Daniels"
        "Manager Dept"    = "Toyota Motor Engineering and Manufacturing North America_Inc"
        "Cost Center"     = "EN000"
      }
    }
    585257= {
      username = "585257"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Grace Ng"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    560074= {
      username = "560074"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    460118= {
      username = "460118"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Marc Valencia"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    459752= {
      username = "459752"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    519016= {
      username = "519016"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Max Hernandez"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    590230= {
      username = "590230"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "TMN Toyota Motor North America"
        "Manager Dept"    = "Srinivasa Komirisetty"
        "Cost Center"     = "955090"
      }
    }
    525699= {
      username = "525699"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Marc Valencia"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    141738= {
      username = "141738"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srinivasa Komirisetty"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }
    405353= {
      username = "405353"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Jim Kidder"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }
    587760= {
      username = "587760"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    602447= {
      username     = "602447"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "OXFORDCOMPUTERGROUP_LLC"
        "User Manager"    = "Amjad Ashoor"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    598888= {
      username = "598888"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    437101= {
      username = "437101"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    559861= {
      username = "559861"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    553946= {
      username = "553946"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    580017= {
      username = "580017"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    585372= {
      username = "585372"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    428757= {
      username = "428757"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    539681= {
      username     = "539681"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "PREMIERSystemIntegrators"
        "User Manager"    = "Jeffrey Adkins"
        "Manager Dept"    = "Toyota Motor Mfg Kentucky_Inc"
        "Cost Center"     = "GR000"
      }
    }
    559245= {
      username = "559245"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    576583= {
      username = "576583"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    583457= {
      username = "583457"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
  
  }


  ws_running_mode                   = "ALWAYS_ON"
  ws_compute_type_name              = "PERFORMANCE"
  ws_bundle_id                      = "wsb-3ywx9pcj4"
  ws_directory_id                   = "d-90678a5aff"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key          = "arn:aws:kms:us-east-1:077387244011:key/5dc393d0-3b81-4589-bb3c-f87922b54456"
  ws_tags = {
    "Persona"    = "IMS"
    "git_module" = "prod/us-east-1/prd/workspace_imswave2set2"
  }
}
