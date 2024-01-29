
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

431820= {
   username             = "431820"
   tags = {
      "CW-Provider"     = "Cognizant Technology Solutions"
      "User Manager"    = "Brian Lieberson"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955042"
   }
}
463883 = {
   username             = "463883"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955113"
   }
}
582090 = {
   username             = "582090"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Brian Lieberson"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
     }
}
532654 = {
   username             = "532654"
   tags = {
       "CW-Provider"     = "MINDTREE LTD"
       "User Manager"    = "Ben Takahashi"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955046"
   }
}
552002 = {
  username             = "552002"
  tags = {
     "CW-Provider"     = "HITACHICONSULTING"
     "User Manager"    = "Min Hu"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955071"
   }
}
516545= {
   username             = "516545"
   tags = {
      "CW-Provider"     = "Cognizant Technology Solutions"
      "User Manager"    = "Simson Elakattu"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955020"
   }
} 
600936= {
   username              = "600936"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Bryan Schmidt"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955041"
   }
}
601217= {
   username             = "601217"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Srini Renganathan"
     "Manager Dept"    = "Toyota Motor Sales_ USA_ Inc"
     "Cost Center"     = "109002"
   }
}
545235= {
   username             = "545235"
   tags = {
     "CW-Provider"     = "MINDTREE LTD"
     "User Manager"    = "Jamie McLaren"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955026"
   }
}
600261= {
  username             = "600261"
  tags = {
     "CW-Provider"     = "DELOITTE CONSULTING LLP"
     "User Manager"    = "CNM Reddy"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955017"
   }
}
597186= {
  username             = "597186"
  tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Uday Jullapally"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955042"
   }
}
576724= {
  username             = "576724"
  tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Uday Jullapally"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955042"
   }
}   
581962= {
  username             = "581962"
  tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Simson Elakattu"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955020"
   }
}
530821= {
  username             = "530821"
  tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Ken Horne"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955068"
   }
}
547965= {
   username             = "547965"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "NA"
     "Manager Dept"    = "NA"
     "Cost Center"     = "NA"
   }
}
588829= {
   username             = "588829"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Tom Miller"
     "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
     "Cost Center"     = "322006"
   }
}
599153= {
  username             = "599153"
  tags = {
     "CW-Provider"     = "DELOITTE CONSULTING LLP"
     "User Manager"    = "CNM Reddy"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955017"
   }
}
579921= {
   username             = "579921"
   tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Rich Husa"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955026"
  }
}
557357= {
  username             = "557357"
  tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "NA"
     "Manager Dept"    = "NA"
     "Cost Center"     = "NA"
   }
}
551378= {
   username             = "551378"
   tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "William Hie"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955041"
   }
}
599512= {
   username             = "599512"
   tags = {
     "CW-Provider"     = "DELOITTE CONSULTING LLP"
     "User Manager"    = "Srinivas Prasad"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955109"
   }
}
563098= {
   username             = "563098"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Brian Lieberson"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955042"
   }
}
560264= {
   username             = "560264"
   tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Rajesh Emani"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955042"
   }
}
544389= {
   username             = "544389"
   tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Taylor Pieratt"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955074"
   }
}
593942= {
   username             = "593942"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Adithya Raghuraman"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955066"
   }
}
561546= {
   username             = "561546"
   tags = {
     "CW-Provider"     = "ASCENTTBusinessSolutions"
     "User Manager"    = "Amandeep Chanana"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955003"
   }
}
550520= {
   username             = "550520"
   tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Beth Ocelli"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955074"
   }
}
599981= {
   username             = "599981"
   tags = {
     "CW-Provider"     = "TTNI_TTNETWORKINTEGRATIONUS_INC"
     "User Manager"    = "Dan Budres"
     "Manager Dept"    = "Toyota Motor Engineering Manufacturing North America_Inc"
     "Cost Center"     = "W6103"
   }
}
556861= {
   username             = "556861"
   tags = {
     "CW-Provider"     = "HITACHICONSULTING"
     "User Manager"    = "Alejandra Toussaint"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955075"
   }
}
516530= {
   username             = "516530"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Simson Elakattu"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955020"
   }
}
175134= {
   username             = "175134"
   tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Quin Smith"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955068"
   }
}
444167= {
   username             = "444167"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Michael Gutierrez"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955108"
   }
}
561368= {
  username             = "561368"
  tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Gabriel Pagan"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955065"
   }
}
546596= {
   username             = "546596"
   tags = {
     "CW-Provider"     = "Cognizant Technology Solutions"
     "User Manager"    = "Rajesh Emani"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955046"
   }
}
571885= {
   username             = "571885"
   tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Jai Kumar Dhanasekar"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955042"
   }
}
566015= {
   username             = "566015"
   tags = {
     "CW-Provider"     = "InfosysLimited"
     "User Manager"    = "Uday Jullapally"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955071"
   }
}
583999= {
   username             = "583999"
   tags = {
     "CW-Provider"     = "DELOITTE CONSULTING LLP"
     "User Manager"    = "Yogesh Bhalerao"
     "Manager Dept"    = "TMN Toyota Motor North America"
     "Cost Center"     = "955090"
   }
}
410491= {
   username             = "410491"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Hong Lin"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955023"
   }
}
579923= {
   username             = "579923"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Wayne Mattingly"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
   }
}
549917= {
   username             = "549917"
   tags = {
       "CW-Provider"     = "VDART"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
   }
}
594328 = {
   username             = "594328"
   tags = {
      "CW-Provider"     = "InfosysLimited"
      "User Manager"    = "Adithya Raghuraman"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955066"
   }
}
545913 = {
   username             = "545913"
   tags = {
      "CW-Provider"     = "InfosysLimited"
      "User Manager"    = "Terry Harrison"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955010"
   }
}
593870= {
   username             = "593870"
   tags = {
      "CW-Provider"     = "InfosysLimited"
      "User Manager"    = "Wayne Mattingly"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955042"
   }
}
595715 = {
   username             = "595715"
   tags = {
      "CW-Provider"     = "InfosysLimited"
      "User Manager"    = "Tuhin Diptiman"
      "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
      "Cost Center"     = "109002"
   }
}
444358 = {
   username             = "444358"
   tags = {
      "CW-Provider"     = "InfosysLimited"
      "User Manager"    = "Angela Murthil"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955041"
   }
}
464488= {
   username             = "464488"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Angela Murthil"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955115"
   }
}
582245= {
   username             = "582245"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Daniel Hibbard"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955108"
   }
}
582942 = {
   username             = "582942"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Dennis Choy"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955041"
   }
}
566613 = {
    username             = "566613"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Mohan Ravi"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955005"
    }
 }
585304 = {
   username             = "585304"
   tags = {
      "CW-Provider"     = "InfosysLimited"
      "User Manager"    = "Peter Amstutz"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955072"
   }
}
148834 = {
   username             = "148834"
   tags = {
      "CW-Provider"     = "CONNECTEDX"
      "User Manager"    = "Gupta Wijeratne"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955088"
   }
}
470309 = {
   username             = "470309"
   tags = {
      "CW-Provider"     = "Cognizant Technology Solutions"
      "User Manager"    = "Daniel Hibbard"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955005"
   }
}
598446= {
   username             = "598446"
   tags = {
      "CW-Provider"     = "InfosysLimited"
      "User Manager"    = "Jai Kumar Dhanasekar"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955042"
   }
}
515223 = {
   username             = "515223"
   tags = {
      "CW-Provider"     = "Cognizant Technology Solutions"
      "User Manager"    = "Simson Elakattu"
      "Manager Dept"    = "TMN Toyota Motor North America"
      "Cost Center"     = "955020"
   }
}
571446= {
   username             = "571446"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Amy Speer"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955071"
   }
}
554493= {
   username             = "554493"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Gupta Wijeratne"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955088"
   }
}
547966= {
   username             = "547966"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Peter Amstutz"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955072"
   }
}
177090= {
   username             = "177090"
   tags = {
       "CW-Provider"     = "ASCENTTBusinessSolutions"
       "User Manager"    = "Amandeep Chanana"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955041"
   }
}
583612 = {
   username             = "583612"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Mohan Ravi"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955017"
   }
}
581452 = {
   username             = "581452"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Oakley Higgins"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955026"
   }
}
544355 = {
   username             = "544355"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Michael Gutierrez"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955108"
   }
}
576359= {
   username             = "576359"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "William Hie"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955041"
   }
}
587516= {
   username             = "587516"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Michael Gutierrez"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955108"
   }
}
142664 = {
   username             = "142664"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Gupta Wijeratne"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955108"
   }
}
553659 = {
   username             = "553659"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "CNM Reddy"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
   }
}
598208 = {
   username             = "598208"
   tags = {
       "CW-Provider"     = "MINDTREE LTD"
       "User Manager"    = "Lakshmi Pendyala"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955114"
   }
}
584022= {
   username             = "584022"
   tags = {
       "CW-Provider"     = "DELOITTE CONSULTING LLP"
       "User Manager"    = "Srinivas Prasad"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955109"
   }
}
467142= {
   username             = "467142"
   tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Pradeep Parvataneni"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955001"
   }
}
562168 = {
   username             = "562168"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Abhishek Sharma"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955011"
   }
}
593864= {
   username             = "593864"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Rajesh Emani"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
   }
}
598447 = {
   username             = "598447"
   tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Jai Kumar Dhanasekar"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set1"
  }
}
