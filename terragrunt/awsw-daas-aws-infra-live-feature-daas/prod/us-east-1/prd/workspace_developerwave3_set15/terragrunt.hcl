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

575458 = {
      username = "575458"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    586138 = {
      username = "586138"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    552001 = {
      username = "552001"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Salima Rizvi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
   
    585354 = {
      username = "585354"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ORANGEPEOPLE"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    569843 = {
      username = "569843"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    589010 = {
      username = "589010"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    597702 = {
      username = "597702"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "RAMPINC"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    459651 = {
      username = "459651"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Mary Armstrong"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }
    589157 = {
      username = "589157"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    552860 = {
      username = "552860"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955063"
      }
    }
    579347 = {
      username = "579347"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Mahesh Jaddangi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    586021 = {
      username = "586021"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Engels Tang"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    470328 = {
      username = "470328"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Shiva Reddy Muduganti"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    555633 = {
      username = "555633"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ISG_IntegratedServicesGroup"
        "User Manager" = "Leonieze Brewer"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "322004"
      }
    }
    552037 = {
      username = "552037"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "RAMPINC"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    600355 = {
      username = "600355"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955025"
      }
    }
    601946 = {
      username = "601946"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    532042 = {
      username = "532042"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sybil Sheppard-Deyell"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    577687 = {
      username = "577687"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "VDART"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    425278 = {
      username = "425278"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "112040"
      }
    }
    573758 = {
      username = "573758"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "VDART"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    529653 = {
      username = "529653"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    509257 = {
      username = "509257"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    601155 = {
      username = "601155"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    560844 = {
      username = "560844"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    575643 = {
      username = "575643"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Pradeep Parvataneni"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    445958 = {
      username = "445958"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    344271 = {
      username = "344271"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Peter Johnson"
        "Manager Dept" = "Toyota Motor Engineering_Manufacturing North America_Inc"
        "Cost Center"  = "EMP02"
      }
    }
    542101 = {
      username = "542101"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "EDGYLABS"
        "User Manager" = "Terence Takeguchi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
      }
    }
    597699 = {
      username = "597699"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "RAMPINC"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    599051 = {
      username = "599051"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ENGINEERINGUSA"
        "User Manager" = "Glenn Hall"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    594303 = {
      username = "594303"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Brian Kelly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }
    537758 = {
      username = "537758"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Sooraj Raghav Srinivasan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    573157 = {
      username = "573157"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Andrew Pham"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    603342 = {
      username = "603342"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    599436 = {
      username = "599436"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Salima Rizvi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    581281 = {
      username = "581281"
      tags = {
        "CW-Provider"  = "LEADINGTORCHLLC"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
    536600 = {
      username = "536600"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Shiva Reddy Muduganti"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    450957 = {
      username = "450957"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mike Mora"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    581306 = {
      username = "581306"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    562870 = {
      username = "562870"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Christina McCarver"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    593272 = {
      username = "593272"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Uday Jullapally"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    567431 = {
      username = "567431"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Peter Amstutz"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }
    407000 = {
      username = "407000"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    545039 = {
      username = "545039"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Charlie Kammerer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956508"
      }
    }
    601845 = {
      username = "601845"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Viswaraj Thamma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    571978 = {
      username = "571978"
      tags = {
        "CW-Provider"  = "TTNI_TTNETWORKINTEGRATIONUS_INC"
        "User Manager" = "Prabhu Seeba"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    
    571891 = {
      username = "571891"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Viswaraj Thamma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    553967 = {
      username = "553967"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Sandeep Dhanuk"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    567413 = {
      username = "567413"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "William Hie"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    592814 = {
      username = "592814"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    601852 = {
      username = "601852"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    509240 = {
      username = "509240"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "James Tu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }
    589850 = {
      username = "589850"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Amit Chaudhary"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    580089 = {
      username = "580089"
      tags = {
        "CW-Provider"  = "Clearpath"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    566526 = {
      username = "566526"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    508955 = {
      username = "508955"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Diwakar Chandramouli"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }
    417251 = {
      username = "417251"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Shannon Snapp"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    510324 = {
      username = "510324"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    562724 = {
      username = "562724"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Brian Pryor"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    583324 = {
      username = "583324"
      tags = {
        "CW-Provider"  = "CONNECTEDX"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955113"
      }
    }
    582929 = {
      username = "582929"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Koteswar Rangaraju"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    591609 = {
      username = "591609"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    602700 = {
      username = "602700"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    582463 = {
      username = "582463"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Matt Brown"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    572726 = {
      username = "572726"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gregory Lyn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    560420 = {
      username = "560420"
      tags = {
        "CW-Provider"  = "TRI_ToyotaResearchInstitute"
        "User Manager" = "Richard Moore"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    527878 = {
      username = "527878"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Shiva Reddy Muduganti"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set15"

  }
}
