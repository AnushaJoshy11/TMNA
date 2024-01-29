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
    556009 = {
      username     = "556009"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Stella Santiago"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955003"
      }
    }
    549522 = {
      username     = "549522"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Mohan Ravi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    587880 = {
      username     = "587880"
      tags = {
        "CW-Provider"    = "IBM CORP"
        "User Manager"   = "Travis Washington"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    454310 = {
      username     = "454310"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Mark Morris"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955088"
      }
    }
    600260 = {
      username     = "600260"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }
    550363 = {
      username     = "550363"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Peter Amstutz"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955072"
      }
    }
    582427 = {
      username     = "582427"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    570435 = {
      username     = "570435"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Angela Murthil"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    534760 = {
      username     = "534760"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Michael Gutierrez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    583548 = {
      username     = "583548"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Michael Babiak"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    531887 = {
      username     = "531887"
      tags = {
        "CW-Provider"    = "ACCENTURE"
        "User Manager"   = "Quin Smith"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "956518"
      }
    }
    535408 = {
      username     = "535408"
      tags = {
        "CW-Provider"    = "CISCOSYSTEMSCAPITALCORP"
        "User Manager"   = "Max Hernandez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    583561 = {
      username     = "583561"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Rajesh Emani"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }
    595529 = {
      username     = "595529"
      tags = {
        "CW-Provider"    = "ACCENTURE"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"
      }
    }
    547885 = {
      username     = "547885"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    550361 = {
      username     = "550361"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Michael Gutierrez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    509498 = {
      username     = "509498"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Terry Harrison"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "550251"
      }
    }
    599078 = {
      username     = "599078"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }
    449747 = {
      username     = "449747"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "William Hie"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    585207 = {
      username     = "585207"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    516531 = {
      username     = "516531"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    595859= {
      username     = "595859"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Tim Kor"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955063"
      }
    }
    578483 = {
      username     = "578483"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Sandeep Dhanuk"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    559649 = {
      username     = "559649"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Bernardita Lejarde"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    596243 = {
      username     = "596243"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    595833 = {
      username     = "595833"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    566611 = {
      username     = "566611"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Rajesh Emani"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955005"
      }
    }
    591832 = {
      username     = "591832"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Daniel Hibbard"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955005"
      }
    }
    515219 = {
      username     = "515219"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    516312 = {
      username     = "516312"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    557157 = {
      username     = "557157"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Andrew Pham"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    560712 = {
      username     = "560712"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Jon Andrews"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955025"
      }
    }
    549103 = {
      username     = "549103"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    558432 = {
      username     = "558432"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955071"
      }
    }
    152836 = {
      username     = "152836"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Mark Morris"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955088"
      }
    }
    598452 = {
      username     = "598452"
      tags = {
        "CW-Provider"    = "DELOITTE_TOUCHELLP"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"
      }
    }
    596369 = {
      username     = "596369"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Daniel Hibbard"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955005"
      }
    }
    555157 = {
      username     = "555157"
      tags = {
        "CW-Provider"    = "MINDTREE LTD"
        "User Manager"   = "Jamie McLaren"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    581700 = {
      username     = "581700"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    591175 = {
      username     = "591175"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Brian Lieberson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    547176 = {
      username     = "547176"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Brian Lieberson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    554878 = {
      username     = "554878"
      tags = {
        "CW-Provider"    = "HITACHICONSULTING"
        "User Manager"   = "Min Hu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955071"
      }
    }
    560672 = {
      username     = "560672"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955071"
      }
    }
    600919 = {
      username     = "600919"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "William Hie"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    581689 = {
      username     = "581689"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    572392 = {
      username     = "572392"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    551522 = {
      username     = "551522"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Bryan Schmidt"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    599162 = {
      username     = "599162"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Gupta Wijeratne"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955088"
      }
    }
    552386 = {
      username     = "552386"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Jon Andrews"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    420872 = {
      username     = "420872"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Srinivas Hotha"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    559962 = {
      username     = "559962"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Justin Lynch"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955023"
      }
    }
    419259 = {
      username     = "419259"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Pradeep Parvataneni"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955089"
      }
    }
    529420 = {
      username     = "529420"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Srinivas Hotha"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    596362 = {
      username     = "596362"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    556486 = {
      username     = "556486"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Andrew Pham"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    577853 = {
      username     = "577853"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    516310 = {
      username     = "516310"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    582247 = {
      username     = "582247"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Michael Gutierrez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    581786 = {
      username     = "581786"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Mitch Aubin"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    547197 = {
      username     = "547197"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Brian Lieberson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    181600 = {
      username     = "181600"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Brian Lieberson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    575556 = {
      username     = "575556"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    571431 = {
      username     = "571431"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Brian Lieberson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    515221 = {
      username     = "515221"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    552378 = {
      username     = "552378"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955011"
      }
    }
    590521 = {
      username     = "590521"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Pradeep Parvataneni"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955089"
      }
    }
    407161 = {
      username     = "407161"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Brian Lieberson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    599584 = {
      username     = "599584"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Amit Chaudhary"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    516529 = {
      username     = "516529"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set5"
 
  }
}
  
