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
    413634 = {
      username       = "413634"
      tags = {
      "CW-Provider"  = "NA"
      "User Manager" = "NA"
      "Manager Dept" = "NA"
      "Cost Center"  = "NA"
      }
    }
    556878 = {
      username = "556878"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    425342 = {
      username = "425342"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    581564 = {
      username = "581564"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    576193 = {
      username = "576193"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    576191 = {
      username = "576191"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    550343 = {
      username = "550343"
      tags = {
        "CW-Provider"  = "PERFICIENT_INC"
        "User Manager" = "Srini Bhupathiraju"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    589064 = {
      username = "589064"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Grace Ng"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    594997 = {
      username = "594997"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    601429 = {
      username = "601429"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Jonathan Howes"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    553951 = {
      username = "553951"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    586853 = {
      username = "586853"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srini Satrasala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }
    466521 = {
      username = "466521"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Jonathan Howes"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    530990 = {
      username     = "530990"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    603587 = {
      username     = "603587"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    581321 = {
      username = "581321"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Brian Callahan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    592216 = {
      username = "592216"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    512059 = {
      username = "512059"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    458792 = {
      username = "458792"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Jonathan Howes"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    423539 = {
      username = "423539"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    576558 = {
      username = "576558"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    423543 = {
      username = "423543"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    470706 = {
      username = "470706"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Craig Barney"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    527476 = {
      username = "527476"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    179299 = {
      username = "179299"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    570877 = {
      username = "570877"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Craig Barney"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    527394 = {
      username = "527394"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    576156 = {
      username = "576156"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Richard Turner"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    402688 = {
      username = "402688"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    407607 = {
      username = "407607"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    570731 = {
      username = "570731"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    402862 = {
      username = "402862"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    596625 = {
      username = "596625"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    513041 = {
      username = "513041"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    595318 = {
      username = "595318"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    557079 = {
      username = "557079"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    588561 = {
      username = "588561"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    407602 = {
      username = "407602"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    573931 = {
      username = "573931"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Alisa Vance"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    564710 = {
      username = "564710"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    405266 = {
      username = "405266"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Brian Callahan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    558369 = {
      username = "558369"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    600872 = {
      username = "600872"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srini Satrasala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }
    568762 = {
      username = "568762"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    541892 = {
      username = "541892"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    550395 = {
      username = "550395"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    452072 = {
      username = "452072"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    555775 = {
      username = "555775"
      tags = {
        "CW-Provider"  = "TOYOTATSUSHO_Affiliate"
        "User Manager" = "Prabhu Seeba"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    545088 = {
      username = "545088"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Pradeep Chevuri"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    460693 = {
      username = "460693"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    522801 = {
      username = "522801"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Patti Dixon"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    540378 = {
      username = "540378"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    605799 = {
      username = "605799"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    140020 = {
      username = "140020"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
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
    "git_module" = "prod/us-east-1/prd/workspace_imswave2set4"
  }
}
