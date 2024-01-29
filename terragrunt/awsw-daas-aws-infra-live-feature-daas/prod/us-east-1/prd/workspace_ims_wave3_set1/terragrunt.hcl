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

    587328 = {
      username = "587328"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Richard Turner"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    565860 = {
      username = "565860"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Pradeep Chevuri"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    528825 = {
      username     = "528825"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "PREMIERSystemIntegrators"
        "User Manager" = "Jeffrey Adkins"
        "Manager Dept" = "Toyota Motor Mfg Kentucky_Inc"
        "Cost Center"  = "GR000"
      }
    }

    586195 = {
      username = "586195"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Pradeep Chevuri"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    601550 = {
      username     = "601550"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "AtlasCopcoTools_AssemblySystems"
        "User Manager" = "Nick Westerveld"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    576334 = {
      username = "576334"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    530108 = {
      username     = "530108"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Canon Solutions America"
        "User Manager" = "Peeter Musta"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    460687 = {
      username = "460687"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Jonathan Howes"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    565398 = {
      username = "565398"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    587175 = {
      username     = "587175"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    204959 = {
      username     = "204959"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "RobertsonGroupInc"
        "User Manager" = "Daniel Watson"
        "Manager Dept" = "Toyota Motor Mfg Kentucky_Inc"
        "Cost Center"  = "GW001"
      }
    }
    470571 = {
      username = "470571"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Jonathan Howes"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    436857 = {
      username = "436857"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955013"
      }
    }
    592146 = {
      username = "592146"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Grace Ng"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    602274 = {
      username     = "602274"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    405270 = {
      username = "405270"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Brian Callahan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    554777 = {
      username     = "554777"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "PERFICIENT_INC"
        "User Manager" = "Srini Bhupathiraju"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    535470 = {
      username     = "535470"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "PERFICIENT_INC"
        "User Manager" = "Srini Bhupathiraju"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    554780 = {
      username     = "554780"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "PERFICIENT_INC"
        "User Manager" = "Srini Bhupathiraju"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    538149 = {
      username     = "538149"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Maz Minoo"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    555145 = {
      username     = "555145"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "SurgereInc"
        "User Manager" = "Chris Sturgill"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    565523 = {
      username = "565523"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    526972 = {
      username = "526972"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Craig Barney"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    601396 = {
      username     = "601396"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "AtlasCopcoTools_AssemblySystems"
        "User Manager" = "Nick Westerveld"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    543842 = {
      username     = "543842"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jerry Frazier"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    523598 = {
      username     = "523598"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    578368 = {
      username     = "578368"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Yu Luo"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }

    584495 = {
      username     = "584495"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ALERTENTERPRISEINC"
        "User Manager" = "Scott Keen"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956302"
      }
    }
    598456 = {
      username     = "598456"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Canon Solutions America"
        "User Manager" = "Koteswar Rangaraju"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    601957 = {
      username     = "601957"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    530116 = {
      username     = "530116"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Canon Solutions America"
        "User Manager" = "Peeter Musta"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    587542 = {
      username     = "587542"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "PowerhouseControls"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    522355 = {
      username     = "522355"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Resolve Automation"
        "User Manager" = "Kyle Bialczak"
        "Manager Dept" = "Toyota Motor Engineering_Manufacturing North America_Inc"
        "Cost Center"  = "EC100"
      }
    }
    421338 = {
      username     = "421338"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "BeyondsoftConsulting_Inc"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    232309 = {
      username     = "232309"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Jetdev"
        "User Manager" = "Amjad Ashoor"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    585788 = {
      username = "585788"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    538143 = {
      username     = "538143"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Maz Minoo"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    555093 = {
      username = "555093"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    516728 = {
      username     = "516728"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    540915 = {
      username     = "540915"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Jerry Frazier"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    329829 = {
      username     = "329829"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Craig Barney"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    554301 = {
      username = "554301"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Grace Ng"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    561101 = {
      username     = "561101"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Grace Ng"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    540342 = {
      username     = "540342"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TOYOTATSUSHO_Affiliate"
        "User Manager" = "Joseph Adams"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    411128 = {
      username     = "411128"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Brian Callahan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    540650 = {
      username = "540650"
      tags = {
        "CW-Provider"  = "TataConsultancyServicesLimited"
        "User Manager" = "Richard Turner"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    586223 = {
      username = "586223"
      tags = {
        "CW-Provider"  = "THINKIQ"
        "User Manager" = "Tony Huffman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    155521 = {
      username     = "155521"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Shashi Suvarna"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    156914 = {
      username     = "156914"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955018"
      }
    }
    411091 = {
      username     = "411091"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Shrini Arole"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    171717 = {
      username = "171717"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Sandeep Dhanuk"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955067"
      }
    }
    576194 = {
      username = "576194"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    576195 = {
      username = "576195"
      tags = {
        "CW-Provider"  = "ALORICA INC"
        "User Manager" = "Angie Grant"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956409"
      }
    }
    441780 = {
      username = "441780"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Cory Isom"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "124008"
      }
    }

    536033 = {
      username = "536033"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Grace Ng"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    596393 = {
      username = "596393"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    574310 = {
      username = "574310"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    574306 = {
      username = "574306"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    574325 = {
      username = "574325"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    577583 = {
      username = "577583"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955013"
      }
    }
    571910 = {
      username = "571910"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    606356 = {
      username = "606356"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    606358 = {
      username = "606358"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    606359 = {
      username = "606359"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    606355 = {
      username = "606355"
      tags = {
        "CW-Provider"  = "AIUT Technology Inc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    606357 = {
      username = "606357"
      tags = {
        "CW-Provider"  = "Powerhouse Controls"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
     554776= {
      username = "554776"
      tags = {
        "CW-Provider"  = "PERFICIENT_INC"
        "User Manager" = "Srini Bhupathiraju"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955115"
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
    "git_module" = "prod/us-east-1/prd/workspace_ims_wave3_set1"
  }
}
