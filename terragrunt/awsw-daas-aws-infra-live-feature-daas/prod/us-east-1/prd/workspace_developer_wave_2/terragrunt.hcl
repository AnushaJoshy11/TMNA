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
    # wave 2

    457848 = {
      username     = "457848"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Akhila Guntur"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955071"
      }
    }

    580817 = {
      username     = "580817"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "IBM CORP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }


    589496 = {
      username     = "589496"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Tom Miller"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955085"
      }
    }

    588370 = {
      username     = "588370"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "POINT B Inc"
        "User Manager"   = "Misty O Neal"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "112062"

      
      }
    }

    595261 = {
      username     = "595261"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "NA"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "NA"   
      }
    }

    555699 = {
      username     = "555699"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "HITACHICONSULTING"
        "User Manager"   = "Scientila Duddempudi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }


    513262 = {
      username     = "513262"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }

    570702 = {
      username     = "570702"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }

    454166 = {
      username     = "454166"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Mike White"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }

    140111 = {
      username     = "140111"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "CONNECTEDX"
        "User Manager"   = "Gupta Wijeratne"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955011"
      }
    }

    574383 = {
      username     = "574383"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Krishna Eranki"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }

    569017 = {
      username     = "569017"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }


    602638 = {
      username     = "602638"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Amit Chaudhary"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }

    602235 = {
      username     = "602235"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }

    599072 = {
      username     = "599072"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }

    576289 = {
      username     = "576289"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "HITACHICONSULTING"
        "User Manager"   = "Gopalakrishna Bhat"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955002"
      }
    }

    566083 = {
      username     = "566083"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Mustafa Elmas"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955090"
      }
    }


    545014 = {
      username     = "545014"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "MINDTREE LTD"
        "User Manager"   = ""
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = ""
      }
    }

    528999 = {
      username     = "528999"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Quin Smith"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955068"
      }
    }


    598455 = {
      username     = "598455"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "ASCENTTBusinessSolutions"
        "User Manager"   = "Koteswar Rangaraju"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955005"
      }
    }

    181236 = {
      username     = "181236"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955045"
      }
    }

    581866 = {
      username     = "581866"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Naresh Kalimuthu"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "109002"
      }
    }

    507522 = {
      username     = "507522"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Heartland Automation"
        "User Manager"   = "David Pellett"
        "Manager Dept"   = "Toyota Motor Mfg Indiana_Inc"
        "Cost Center"    = "EX033"
      }
    }


    599152 = {
      username     = "599152"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }

    601161 = {
      username     = "601161"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }

    593871 = {
      username     = "593871"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }

    597007 = {
      username     = "597007"
      tags = {
        "CW-Provider"    = "IBM CORP"
        "User Manager"   = "Travis Washington"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }

    425073 = {
      username     = "425073"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "FIVE_DONELLC"
        "User Manager"   = "Samuel Fusco"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955043"
      }
    }

    246208 = {
      username     = "246208"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "TMNA"
        "User Manager"   = "Andy Pattison"
        "Manager Dept"   = "Toyota Motor Mfg Kentucky Inc"
        "Cost Center"    = "FA15K"
      }
    }

    585050 = {
      username     = "585050"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "N/A"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "N/A"
      }
    }

    582936 = {
      username     = "582936"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }

    171255 = {
      username     = "171255"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }

    451870 = {
      username     = "451870"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "LEADINGTORCHLLC"
        "User Manager"   = "Lauren Drew"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }

    602129 = {
      username     = "602129"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Mitch Aubin"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }

    588376 = {
      username     = "588376"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Rohit Kalyanshetti"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }

    333311 = {
      username     = "333311"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Rich Husa"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }

    602676 = {
      username     = "602676"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Amandeep Chanana"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }

    543352 = {
      username     = "543352"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "VDART"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }

    411539 = {
      username     = "411539"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "PARIVEDASOLUTIONS"
        "User Manager"   = "Ben Takahashi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955115"
      }
    }

    597802 = {
      username     = "597802"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }

    600875 = {
      username     = "600875"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Tom Miller"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955085"
      }
    }

    592337 = {
      username     = "592337"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Srinivas Prasad"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }

    596611 = {
      username     = "596611"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "COVESTIC_INC"
        "User Manager"   = "Steven Patel"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955013"
    
      }
    }

    602701 = {
      username     = "602701"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Mark Derickson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }

    601426 = {
      username     = "601426"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "ASCENTTBusinessSolutions"
        "User Manager"   = "Koteswar Rangaraju"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955005"
      }
    }

    562176 = {
      username     = "562176"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }

    556592 = {
      username     = "556592"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "RAMPINC"
        "User Manager"   = "Jamie Plummer"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }


    589777 = {
      username     = "589777"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Srinivas Prasad"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }

    600692 = {
      username     = "600692"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "ORANGEPEOPLE"
        "User Manager"   = "Steve Berry"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955011"
      }
    }

    181646 = {
      username     = "181646"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Rohit Kalyanshetti"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }


    579925 = {
      username     = "579925"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }

    587545 = {
      username     = "587545"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }


    575644 = {
      username     = "575644"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }


    583470 = {
      username     = "583470"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "IBM CORP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }

    524079 = {
      username     = "524079"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "IBM CORP"
        "User Manager"   = "Ram Kurapati"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"

      }
    }

    451293 = {
      username     = "451293"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "LEADINGTORCHLLC"
        "User Manager"   = "Lauren Drew"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }

    183157 = {
      username     = "183157"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }

    543328 = {
      username     = "543328"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "DIMIOUR LLC"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }

    590264 = {
      username     = "590264"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "IBM CORP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    527912 = {
      username     = "527912"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Sybil Sheppard-Deyell"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
  }

  ws_running_mode                   = "ALWAYS_ON"
  ws_compute_type_name              = "POWER"
  ws_bundle_id                      = "wsb-1rj4f26hh"
  ws_directory_id                   = "d-90678a5aff"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key          = "arn:aws:kms:us-east-1:077387244011:key/5dc393d0-3b81-4589-bb3c-f87922b54456"
  ws_tags = {
    "Persona"    = "developer"
    "git_module" = "prod/us-east-1/prd/workspace_developer_wave_2"
  }
}

