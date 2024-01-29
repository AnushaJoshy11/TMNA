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

    585690= {
      username     = "585690"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "MacLellanIntegratedServices"
        "User Manager"    = "Emre Arif"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }

    578726= {
      username     = "578726"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "PERFICIENT_INC"
        "User Manager"    = "Srini Bhupathiraju"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955115"
      }
    }

    554781= {
      username     = "554781"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "PERFICIENT_INC"
        "User Manager"    = "Srini Bhupathiraju"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955115"
      }
    }

    587886= {
      username     = "587886"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Patti Dixon"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003"
      }
    }

    599579= {
      username     = "599579"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }

    576873= {
      username = "576873"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srinivasa Komirisetty"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955090"
      }
    }

    528049= {
      username     = "528049"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Jim Kidder"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }

    571574= {
      username     = "571574"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "FORMER VENDOR_UNKNOWN VENDOR"
        "User Manager"    = "Troy Morgan"
        "Manager Dept"    = "Toyota Motor Mfg Kentucky_Inc"
        "Cost Center"     = "FA00K"
      }
    }

    581968= {
      username = "581968"
      tags = {
        "CW-Provider"     = "Rovisys"
        "User Manager"    = "Jesse Daniels"
        "Manager Dept"    = "Toyota Motor Engineering and Manufacturing North America_Inc"
        "Cost Center"     = "EN000"
      }
    }

    584496= {
      username     = "584496"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ALERTENTERPRISEINC"
        "User Manager"    = "Scott Keen"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "956302"
      }
    }
    598733= {
      username     = "598733"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Amandeep Chanana"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955004"
      }
    }
    568587= {
      username     = "568587"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "SCHNEIDER NATIONAL INC"
        "User Manager"    = "Freddy Khan"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    547150= {
      username     = "547150"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "Stefanini Inc"
        "User Manager"    = "James Tu"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955072"
      }
    }
    533414= {
      username     = "533414"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "FORMERVENDOR_UNKNOWNVENDOR"
        "User Manager"    = "Troy Morgan"
        "Manager Dept"    = "Toyota Motor Mfg Kentucky_Inc"
        "Cost Center"     = "FA00K"
      }
    }
    584034= {
      username     = "584034"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "Rovisys"
        "User Manager"    = "Jesse Daniels"
        "Manager Dept"    = "Toyota Motor Engineering and Manufacturing North America_Inc"
        "Cost Center"     = "EN000"
      }
    }
    565236= {
      username     = "565236"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    407288= {
      username = "407288"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srinivasa Komirisetty"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    596576= {
      username = "596576"
      tags = {
        "CW-Provider"     = "KAIZENANALYTIX"
        "User Manager"    = "Scientila Duddempudi"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "996092"
      }
    }
    603845= {
      username     = "603845"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
        
      }
    }
    598732= {
      username = "598732"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Amandeep Chanana"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955004"
      }
    }
    219881= {
      username     = "219881"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ProjectAssociates_Inc"
        "User Manager"    = "Teresa Buchanan"
        "Manager Dept"    = "Toyota Motor Mfg Indiana_Inc"
        "Cost Center"     = "EZ800"
      }
    }
    587541= {
      username     = "587541"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "PowerhouseControls"
        "User Manager"    = "Jamie Plummer"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    552012= {
      username     = "552012"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "CYLANCE_INC"
        "User Manager"    = "Jeff Juett"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955023"
      }
    }
    508121= {
      username = "508121"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    570438= {
      username     = "570438"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    588719= {
      username = "588719"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Alisa Vance"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }
    598215= {
      username = "598215"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    556881= {
      username = "556881"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Craig Barney"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    586860= {
      username = "586860"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srini Satrasala"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003"
      }
    }
    581657= {
      username = "581657"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Brian Callahan"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955019"
      }
    }
    541941= {
      username = "541941"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    568794= {
      username     = "568794"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    531388= {
      username     = "531388"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    583949= {
      username = "583949"
      tags = {
        "CW-Provider"     = "CBTS_CincinnatiBellTechSolutions"
        "User Manager"    = "Max Hernandez"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    567927= {
      username = "567927"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Pradeep Chevuri"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    582865= {
      username = "582865"
      tags = {
        "CW-Provider"     = "PowerhouseControls"
        "User Manager"    = "Jamie Plummer"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    522268= {
      username = "522268"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    513267= {
      username = "513267"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }
    466328= {
      username     = "466328"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    598734= {
      username     = "598734"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Amandeep Chanana"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955004"
      }
    }
    586221= {
      username = "586221"
      tags = {
        "CW-Provider"     = "THINKIQ"
        "User Manager"    = "Tony Huffman"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955002"
      }
    }
    552699= {
      username     = "552699"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "KAIZENANALYTIX"
        "User Manager"    = "Chris Kelly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
      }
    }
    599222= {
      username     = "599222"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Brian Callahan"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    555138= {
      username     = "555138"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "SurgereInc"
        "User Manager"    = "Chris Sturgill"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    553876= {
      username = "553876"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srini Satrasala"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955005"
      }
    }
    416835= {
      username     = "416835"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    603056= {
      username     = "603056"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Amandeep Chanana"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
      }
    }
    540594= {
      username     = "540594"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "AkridataInc"
        "User Manager"    = "Dave Watenpool"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955025"
      }
    }
    442823= {
      username = "442823"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Chandra Manne"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955023"
      }
    }
    437244= {
      username = "437244"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Craig Barney"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    533207= {
      username = "533207"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    600917= {
      username = "600917"
      tags = {
        "CW-Provider"     = "PERFICIENT_INC"
        "User Manager"    = "Srini Bhupathiraju"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955115"
      }
    }
    590671= {
      username     = "590671"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    596445= {
      username     = "596445"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }


    598802= {
      username = "598802"
      tags = {
        "CW-Provider"     = "TOYOTATSUSHO_Affiliate"
        "User Manager"    = "Prabhu Seeba"
        "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
        "Cost Center"     = "109002"
      }
    }
    542161= {
      username     = "542161"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Patti Dixon"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
      }
    }
    589643= {
      username = "589643"
      tags = {
        "CW-Provider"     = "ETISA_Mexico"
        "User Manager"    = "Antonieta Zimmerman"
        "Manager Dept"    = "Toyota de Mexico"
        "Cost Center"     = "154412"
      }
    }
    598300= {
      username     = "598300"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "PowerhouseControls"
        "User Manager"    = "Eduardo Guzman"
        "Manager Dept"    = "Toyota Motor Engineering and Manufacturing North America_Inc"
        "Cost Center"     = "EMP00"
      }
    }
    409401= {
      username = "409401"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    589651= {
      username     = "589651"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ETISA_Mexico"
        "User Manager"    = "Antonieta Zimmerman"
        "Manager Dept"    = "Toyota de Mexico"
        "Cost Center"     = "154412"
      }
    }
    140087= {
      username     = "140087"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    577099= {
      username = "577099"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    593950= {
      username = "593950"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Max Hernandez"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    580067= {
      username     = "580067"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    596626= {
      username = "596626"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    552681= {
      username = "552681"
      tags = {
        "CW-Provider"     = "KAIZENANALYTIX"
        "User Manager"    = "Chris Kelly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
      }
    }
    553741= {
      username     = "553741"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Rajesh Emani"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955005"
      }
    }
    555796= {
      username     = "555796"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "NUTANIX_INC"
        "User Manager"    = "N/A"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "N/A"
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
    "git_module" = "prod/us-east-1/prd/workspace_ims_wave2"
  }
}
