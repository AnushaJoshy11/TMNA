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
   571926= {
      username             = "571926"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

   584694= {
      username             = "584694"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Doug Sowers"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }   

   543103= {
      username             = "543103"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Srinivas Hotha"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   507638= {
      username             = "507638"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Angela Murthil"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "550251"
      }
   }

   593899= {
      username             = "593899"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }   

   588375= {
      username             = "588375"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Krishna Eranki"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

   583461= {
      username             = "583461"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
      }
   }


   555131= {
      username             = "555131"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Charlene Govender"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   555992= {
      username             = "555992"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "CISCOSYSTEMSCAPITALCORP"
         "User Manager"    = "Max Hernandez"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955020"
      }
   }

  
   456335= {
      username             = "456335"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Brian Lieberson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   543428= {
      username             = "543428"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mohan Ravi"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
      }
   }

   569197= {
      username             = "569197"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   590523= {
      username             = "590523"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Pradeep Parvataneni"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955089"
      }
   }

   581311= {
      username             = "581311"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }
   410056= {
      username             = "410056"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Angela Murthil"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955010"
      }
   }

   412255= {
      username             = "412255"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "CONNECTEDX"
         "User Manager"    = "Gupta Wijeratne"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955088"
      }
   }

   140112= {
      username             = "140112"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gupta Wijeratne"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }
   469193= {
      username             = "469193"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Dennis Choy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   561444= {
      username             = "561444"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Sriram Thiruvenkatam"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
      }
   }

   526584= {
      username             = "526584"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Simson Elakattu"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955020"
      }
   }

   450571= {
      username             = "450571"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Srinivas Hotha"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   599171= {
      username             = "599171"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Drew Kalangie"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955002"
      }
   }

   571282= {
      username             = "571282"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "William Hie"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   550528= {
      username             = "550528"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
      }
   }

   575529= {
      username             = "575529"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Akhila Guntur"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
      }
   }

   598803= {
      username             = "598803"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "ACCENTURE"
         "User Manager"    = "Quin Smith"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "956518"
      }
   }

   569834= {
      username             = "569834"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Brian Lieberson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   522399= {
      username             = "522399"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Uday Jullapally"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   571284= {
      username             = "571284"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "LEADINGTORCHLLC"
         "User Manager"    = "Lauren Drew"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955074"
      }
   }

   576733= {
      username             = "576733"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   594836= {
      username             = "594836"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gupta Wijeratne"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955088"
      }
   }

   522755= {
      username             = "522755"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Simson Elakattu"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955020"
      }
   }


   579330= {
      username             = "579330"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Uday Jullapally"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   545922= {
      username             = "545922"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Ting-Mou Wu"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   467706= {
      username             = "467706"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Neelima Venreddy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   546558= {
      username             = "546558"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Neelima Venreddy"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "322006"
      }
   }

   451565= {
      username             = "451565"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Brian Lieberson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955043"
      }
   }

   585624= {
      username             = "585624"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Michael Gutierrez"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
      }
   }

   594322= {
      username             = "594322"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Adithya Raghuraman"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
      }
   }

   
   601895= {
      username             = "601895"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

  582278= {
      username             = "582278"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "ACCENTURE"
         "User Manager"    = "Jordan MacIntyre"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "956518"
      }
   }

   581922= {
      username             = "581922"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "HITACHICONSULTING"
         "User Manager"    = "Rajesh Chathapuram"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "996092"
      }
   }

   410106= {
      username             = "410106"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Krishna Eranki"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

   532306= {
      username             = "532306"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "EN Engineering LLC"
         "User Manager"    = "Joe Li"
         "Manager Dept"    = "Toyota Motor Mfg_Texas_Inc"
         "Cost Center"     = "WT000"
      }
   }

   559436= {
      username             = "559436"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "CISCOSYSTEMSCAPITALCORP"
         "User Manager"    = "Max Hernandez"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955018"
      }
   }

   597188= {
      username             = "597188"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "IBM CORP"
         "User Manager"    = "Rekha Singh"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955109"
      }
   }

   598453= {
      username             = "598453"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "DELOITTE_TOUCHELLP"
         "User Manager"    = "Tee Nguyen"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955023"
      }
   }

   601469= {
      username             = "601469"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "DELOITTE CONSULTING LLP"
         "User Manager"    = "Rekha Singh"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955109"
      }
   }

   601948= {
      username             = "601948"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "DELOITTE CONSULTING LLP"
         "User Manager"    = "Rekha Singh"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955109"
      }
   }

   567284= {
      username             = "567284"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jolene Mawson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   547158= {
      username             = "547158"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Gabriel Pagan"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "550251"
      }
   }

   578221= {
      username             = "578221"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jolene Mawson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   559710= {
      username             = "559710"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   598995= {
      username             = "598995"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "DELOITTE CONSULTING LLP"
         "User Manager"    = "CNM Reddy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
      }
   }

   574895= {
      username             = "574895"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Brian Lieberson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   182322= {
      username             = "182322"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Ting-Mou Wu"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   574897= {
      username             = "574897"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Brian Lieberson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   599637= {
      username             = "599637"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "DELOITTE CONSULTING LLP"
         "User Manager"    = "CNM Reddy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
      }
   }

   549521= {
      username             = "549521"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mohan Ravi"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955046"
      }
   }

   558389= {
      username             = "558389"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Angela Murthil"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955010"
      }
   }

   181902= {
      username             = "181902"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Angela Murthil"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "550251"
      }
   }

   564866= {
      username             = "564866"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Leo Zhang"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
      }
   }

   529039= {
      username             = "529039"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "NA"
         "Manager Dept"    = "NA"
         "Cost Center"     = "NA"
   
      }
   }
   584514= {
      username             = "584514"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Dennis Choy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   600505= {
      username             = "600505"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Daniel Hibbard"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
      }
   }

   582430= {
      username             = "582430"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "William Hie"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   583262= {
      username             = "583262"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Srinivas Hotha"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   603219= {
      username             = "603219"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Andrew Pham"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   547206= {
      username             = "547206"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Srinivas Hotha"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   452269= {
      username             = "452269"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Srinivas Hotha"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955072"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set7"
  }
}
