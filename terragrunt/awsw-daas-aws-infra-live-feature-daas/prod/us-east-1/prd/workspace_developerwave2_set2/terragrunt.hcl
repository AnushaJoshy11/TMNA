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

    583453 = {
      username = "583453"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sankhadeep Nath"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    550615 = {
      username = "550615"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    181038 = {
      username = "181038"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    572363 = {
      username = "572363"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Dennis Choy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    600356 = {
      username = "600356"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    413004 = {
      username = "413004"
      tags = {
        "CW-Provider"  = "TTNI_TTNETWORKINTEGRATIONUS_INC"
        "User Manager" = "Prabhu Seeba"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    584520 = {
      username = "584520"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    465589 = {
      username = "465589"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    548918 = {
      username = "548918"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    601438 = {
      username = "601438"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955040"
      }
    }
    412850 = {
      username = "412850"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Mike White"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    576200 = {
      username = "576200"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955025"
      }
    }
    599164 = {
      username = "599164"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
    579667 = {
      username = "579667"
      tags = {
        "CW-Provider"  = "JKLTechnologies"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    582386 = {
      username = "582386"
      tags = {
        "CW-Provider"  = "LEADINGTORCHLLC"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
    525365 = {
      username = "525365"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Angela Murthil"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955010"
      }
    }
    597441 = {
      username = "597441"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    575459 = {
      username = "575459"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    452152 = {
      username = "452152"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    472122 = {
      username = "472122"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Michael Light"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    578287 = {
      username = "578287"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955044"
      }
    }
    579937 = {
      username = "579937"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Uday Jullapally"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    567163 = {
      username = "567163"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955113"
      }
    }
    576868 = {
      username = "576868"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Tapas Bose"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    440537 = {
      username = "440537"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    578325 = {
      username = "578325"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Dmmato Omato"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    562002 = {
      username = "562002"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mark Morris"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
    573893 = {
      username = "573893"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    600402 = {
      username = "600402"
      tags = {
        "CW-Provider"  = "CISCOSYSTEMSCAPITALCORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955018"
      }
    }
    581293 = {
      username = "581293"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Pradeep Parvataneni"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    415578 = {
      username = "415578"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Matt Brown"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    567833 = {
      username = "567833"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    575558 = {
      username = "575558"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    558434 = {
      username = "558434"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Mary Armstrong"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }
    585663 = {
      username = "585663"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955004"
      }
    }
    581295 = {
      username = "581295"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    568072 = {
      username = "568072"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Mai Miller"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "124003"
      }
    }
    537186 = {
      username = "537186"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Sandeep Dhanuk"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    595530 = {
      username = "595530"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    406010 = {
      username = "406010"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Dennis Choy"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550251"
      }
    }
    571909 = {
      username = "571909"
      tags = {
        "CW-Provider"  = "AIUTTechnologyInc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    600937 = {
      username = "600937"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    577174 = {
      username = "577174"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    577694 = {
      username = "577694"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Andrew Pham"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    583093 = {
      username = "583093"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    574081 = {
      username = "574081"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    574429 = {
      username = "574429"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    596599 = {
      username = "596599"
      tags = {
        "CW-Provider"  = "McKinseyconsulting"
        "User Manager" = "David Herb"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "201007"
      }
    }
    579979 = {
      username = "579979"
      tags = {
        "CW-Provider"  = "TTNI_TTNETWORKINTEGRATIONUS_INC"
        "User Manager" = "Prabhu Seeba"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    588397 = {
      username = "588397"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    599985 = {
      username = "599985"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    569320 = {
      username = "569320"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    557090 = {
      username = "557090"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sridevi Nimmagadda"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
    580420 = {
      username = "580420"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    596373 = {
      username = "596373"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955025"
      }
    }
    509890 = {
      username = "509890"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Sooraj Raghav Srinivasan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    596364 = {
      username = "596364"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Uday Jullapally"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    595400 = {
      username = "595400"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    578733 = {
      username = "578733"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    552140 = {
      username = "552140"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    172000 = {
      username = "172000"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Mary Armstrong"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }
    601425 = {
      username = "601425"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Koteswar Rangaraju "
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    516532 = {
      username = "516532"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    601411 = {
      username = "601411"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    579325 = {
      username = "579325"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    561951 = {
      username = "561951"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Yogesh Bhalerao"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    578861 = {
      username = "578861"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955044"
      }
    }
    599638 = {
      username = "599638"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    545009 = {
      username = "545009"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave2_set2"
  }
}
