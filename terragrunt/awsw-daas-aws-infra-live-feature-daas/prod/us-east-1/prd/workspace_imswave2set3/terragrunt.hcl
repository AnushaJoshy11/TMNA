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

          601432 = {
      username = "601432"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Jonathan Howes"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    585571 = {
      username = "585571"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    573845 = {
      username = "573845"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Mike White"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    545147 = {
      username = "545147"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Pradeep Chevuri"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    601433 = {
      username = "601433"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Jonathan Howes"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    601431 = {
      username = "601431"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Jonathan Howes"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    569947 = {
      username = "569947"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }

    540448 = {
      username = "540448"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }

    569774 = {
      username = "569774"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    514070 = {
      username = "514070"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    531156 = {
      username = "531156"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }

    519012 = {
      username = "519012"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    574374 = {
      username = "574374"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    554612 = {
      username = "554612"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    596732 = {
      username = "596732"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    599323 = {
      username = "599323"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    414206 = {
      username = "414206"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    518367 = {
      username = "518367"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    523194 = {
      username = "523194"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    544380 = {
      username = "544380"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Craig Barney"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    529811 = {
      username = "529811"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    558368 = {
      username = "558368"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    574979 = {
      username = "574979"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Craig Barney"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    156865 = {
      username = "156865"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Craig Barney"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    590278 = {
      username = "590278"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }

    514988 = {
      username = "514988"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    563836 = {
      username = "563836"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    569967 = {
      username = "569967"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    513038 = {
      username = "513038"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    553009 = {
      username = "553009"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    413609 = {
      username = "413609"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Brian Callahan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    525546 = {
      username = "525546"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    588781 = {
      username = "588781"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    518339 = {
      username = "518339"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Marc Valencia"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    585576 = {
      username = "585576"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    567928 = {
      username = "567928"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Pradeep Chevuri"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    584041 = {
      username = "584041"
      tags = {
        "CW-Provider" = "Rovisys"
        "User Manager" = "Jesse Daniels"
        "Manager Dept" = "Toyota Motor Engineering_Manufacturing North America_Inc"
        "Cost Center"  = "EN000"
      }
    }
    519015 = {
      username = "519015"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Brian Callahan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    525472 = {
      username = "525472"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    586859 = {
      username = "586859"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srini Satrasala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }
    568601 = {
      username = "568601"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    576749 = {
      username = "576749"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Grace Ng"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    529264 = {
      username = "529264"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    551550 = {
      username = "551550"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Alisa Vance"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    437539 = {
      username = "437539"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    584687 = {
      username = "584687"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    551478 = {
      username = "551478"
      tags = {
        "CW-Provider" = "JacobsEngineeringGroupInc"
        "User Manager" = "Morgan Kennard"
        "Manager Dept" = "Toyota Motor Engineering_Manufacturing North America_Inc"
        "Cost Center"  = "EV100"
      }
    }
    540376 = {
      username = "540376"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    402863 = {
      username = "402863"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Alisa Vance"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    532615 = {
      username = "532615"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    556052 = {
      username = "556052"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    596627 = {
      username = "596627"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    522532 = {
      username = "522532"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    555096 = {
      username = "555096"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    556872 = {
      username = "556872"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    576192 = {
      username = "576192"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    521669 = {
      username = "521669"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Richard Turner"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    527450 = {
      username = "527450"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    546227 = {
      username = "546227"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    568697 = {
      username = "568697"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    531021 = {
      username = "531021"
      tags = {
        "CW-Provider" = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    594450 = {
      username = "594450"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Brian Callahan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    521256 = {
      username = "521256"
      compute_type_name = "POWER"
      tags = {
        "CW-Provider" = "TataConsultancyServicesLimited"
        "User Manager" = "Richard Turner"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
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
    "git_module" = "prod/us-east-1/prd/workspace_imswave2set3"
  }
}
