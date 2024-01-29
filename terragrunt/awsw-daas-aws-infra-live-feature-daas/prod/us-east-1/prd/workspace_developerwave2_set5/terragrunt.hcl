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
  ws_users = {

    

    455521 = {
      username     = "455521"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "LEADINGTORCHLLC"
        "User Manager" = "Mark Morris"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    597801 = {
      username     = "597801"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    551454 = {
      username     = "551454"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Debbie Fournier"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }

    516844 = {
      username     = "516844"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }

    595860 = {
      username     = "595860"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Rajesh Chathapuram"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955075"
      }
    }

    585787 = {
      username     = "585787"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    600482 = {
      username     = "600482"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srini Satrasala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    576280 = {
      username     = "576280"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }

    409515 = {
      username     = "409515"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    553849 = {
      username     = "553849"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    556606 = {
      username     = "556606"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Victor Valentin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955040"
      }
    }

    455521 = {
      username     = "455521"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "LEADINGTORCHLLC"
        "User Manager" = "Mark Morris"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    545538 = {
      username     = "545538"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }

    561348 = {
      username     = "561348"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Rohit Kalyanshetti"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    599333 = {
      username     = "599333"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Salima Rizvi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }

    586539 = {
      username     = "586539"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    577176 = {
      username     = "577176"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }



    544482 = {
      username     = "544482"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
      }
    }

    555307 = {
      username     = "555307"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Marshall Dempsey"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }

    581288 = {
      username     = "581288"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "LEADINGTORCHLLC"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    594324 = {
      username     = "594324"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    574926 = {
      username     = "574926"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    581519 = {
      username     = "581519"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    540441 = {
      username     = "540441"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Dennis Choy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    570711 = {
      username     = "570711"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    403335 = {
      username     = "403335"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Neelima Venreddy"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "322006"
      }
    }

    570432 = {
      username     = "570432"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }

    599516 = {
      username     = "599516"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    549672 = {
      username     = "549672"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sriram Thiruvenkatam"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }

    557027 = {
      username     = "557027"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Kishore Jonnalagedda"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }

    545076 = {
      username     = "545076"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }


    577698 = {
      username     = "577698"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    590209 = {
      username     = "590209"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    574523 = {
      username     = "574523"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Stella Santiago"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }
    571742 = {
      username     = "571742"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "124003"
      }
    }

    563099 = {
      username     = "563099"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    586216 = {
      username     = "586216"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    599161 = {
      username     = "599161"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Stella Santiago"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }

    590576 = {
      username     = "590576"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Kimberly Gonzales"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }

    560381 = {
      username     = "560381"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    583098 = {
      username     = "583098"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
   
    141084 = {
      username     = "141084"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    583100 = {
      username     = "583100"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager" = "Mahesh Jaddangi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    522246 = {
      username     = "522246"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Tony Huffman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }

    585684 = {
      username     = "585684"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
         
      }
    }

    569421 = {
      username     = "569421"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "William Hie"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"

      }
    }

    555508 = {
      username     = "555508"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    581036 = {
      username     = "581036"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    572615 = {
      username     = "572615"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    405244 = {
      username     = "405244"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550262"
      }
    }


    527913 = {
      username     = "527913"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }

    431172 = {
      username     = "431172"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    557861 = {
      username     = "557861"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "VDART"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }


    416282 = {
      username     = "416282"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Neelima Venreddy"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "511002"
      }
    }

    576862 = {
      username     = "576862"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Dmmato Omato"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

  
    539406 = {
      username     = "539406"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    554887 = {
      username     = "554887"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Alejandra Toussaint"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }

    536516 = {
      username     = "536516"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    592330 = {
      username     = "592330"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Justin Lynch"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }

    531997 = {
      username     = "531997"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    465164 = {
      username     = "465164"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "LEADINGTORCHLLC"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }

    554541 = {
      username     = "554541"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    539598 = {
      username     = "539598"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    539899 = {
      username     = "539899"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Computech"
        "User Manager" = "Freddy Khan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }

    523844 = {
      username     = "523844"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "N/A"
        "Manager Dept" = "N/A"
        "Cost Center"  = "N/A"
      }
    }
    571827 = {
      username     = "571827"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave2_set5"
  }
}
