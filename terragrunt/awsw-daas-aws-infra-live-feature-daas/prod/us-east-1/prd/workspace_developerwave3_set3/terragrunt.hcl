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

    566647 = {
      username = "566647"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }    
    591119 = {
      username = "591119"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    556014 = {
      username = "556014"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    400793 = {
      username = "400793"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "PARIVEDASOLUTIONS"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    564251 = {
      username = "564251"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Cliff Bussell"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }
    599156 = {
      username = "599156"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    515332 = {
      username = "515332"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Joe Chiacchio"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    569801 = {
      username = "569801"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    564014 = {
      username = "564014"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Scientila Duddempudi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    412169 = {
      username = "412169"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "William Hie"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    547194 = {
      username = "547194"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Diwakar Chandramouli"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }
    600405 = {
      username = "600405"
      tags = {
        "CW-Provider"  = "CISCOSYSTEMSCAPITALCORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955018"
      }
    }
    584299 = {
      username = "584299"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "BOOZALLENHAMILTON_INC"
        "User Manager" = "Jake Marullo"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    554850 = {
      username = "554850"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    549462 = {
      username = "549462"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    594542 = {
      username = "594542"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Charlene Govender"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    602876 = {
      username = "602876"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955063"
      }
    }
    603665 = {
      username = "603665"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    601476 = {
      username = "601476"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    602709 = {
      username = "602709"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Amit Chaudhary"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    414924 = {
      username = "414924"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    600404 = {
      username = "600404"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "CISCOSYSTEMSCAPITALCORP"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    581312 = {
      username = "581312"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    586565 = {
      username = "586565"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955004"
      }
    }
    553981 = {
      username = "553981"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    582860 = {
      username = "582860"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    594847 = {
      username = "594847"
      tags = {
        "CW-Provider"  = "CONNECTEDX"
        "User Manager" = "Tapas Bose"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    135670 = {
      username = "135670"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955018"
      }
    }
    155747 = {
      username = "155747"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Brian Callahan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955019"
      }
    }
    470127 = {
      username = "470127"
      tags = {
        "CW-Provider"  = "Vutex"
        "User Manager" = "Joseph Limbrick"
        "Manager Dept" = "Toyota Motor Mfg_Texas_Inc"
        "Cost Center"  = "VU000"
      }
    }
    517181 = {
      username = "517181"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    534715 = {
      username = "534715"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Fanuel Zekiros"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    526409 = {
      username = "526409"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sybil Sheppard-Deyell"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    544044 = {
      username = "544044"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Charlene Govender"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    598510 = {
      username = "598510"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    461517 = {
      username = "461517"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955001"
      }
    }
    594641 = {
      username = "594641"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    556013 = {
      username = "556013"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    516536 = {
      username = "516536"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    599596 = {
      username = "599596"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Koteswar Rangaraju"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    103641 = {
      username = "103641"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Richard Turner"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955018"
      }
    }
    587358 = {
      username = "587358"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    544385 = {
      username = "544385"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    552017 = {
      username = "552017"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }	
    405312 = {
      username = "405312"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jose Carrasco"
        "Manager Dept" = "TDP Toyota de Puerto Rico Corporate"
        "Cost Center"  = "503"
      }
    }
    566268 = {
      username = "566268"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955063"
      }
    }
    600052 = {
      username = "600052"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    583456 = {
      username = "583456"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    603787 = {
      username = "603787"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    259567 = {
      username = "259567"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Angie Glenn"
        "Manager Dept" = "Toyota Motor Mfg Indiana_Inc"
        "Cost Center"  = "CJ100"
      }
    }
    598451 = {
      username = "598451"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Chris Kelly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    587983 = {
      username = "587983"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    447085 = {
      username = "447085"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    600390 = {
      username = "600390"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Mohan Ravi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    599076 = {
      username = "599076"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    583459 = {
      username = "583459"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    597207 = {
      username = "597207"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    585370 = {
      username = "585370"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jolene Mawson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    546297 = {
      username = "546297"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    600918 = {
      username = "600918"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "William Hie"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    588827 = {
      username = "588827"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Angela Murthil"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    603664 = {
      username = "603664"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    594902 = {
      username = "594902"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    583981 = {
      username = "583981"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    179603 = {
      username = "179603"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955067"
      }
    }
    592841 = {
      username = "592841"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    428312 = {
      username = "428312"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    595804 = {
      username = "595804"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Christina McCarver"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    566078 = {
      username = "566078"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Peter Amstutz"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }
    567305 = {
      username = "567305"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set3"
  }
}
