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
    418070 = {
      username     = "418070"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited" 
        "User Manager"   = "Beth Ocelli"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
     }
  }
    602870 = {
      username     = "602870"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Uday Jullapally"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    581695 = {
      username = "581695"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    573869 = {
      username     = "573869"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    556690 = {
      username = "556690"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Michael Gutierrez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    582849 = {
      username = "582849"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager"   = "Matt Brown"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955002"
      }
    }
    569951 = {
      username = "569951"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Srinivas Prasad"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "124005"
      }
    }
    597208 = {
      username = "597208"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Abhishek Sharma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955011"
      }
    }
    553938 = {
      username     = "553938"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"
      }
    }
    571779 = {
      username = "571779"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    442600 = {
      username     = "442600"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"
      }
    }
    413518 = {
      username = "413518"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Sarkis Nalchadjian"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    574907 = {
      username = "574907"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    578826 = {
      username     = "578826"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Srinivas Prasad"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    584512 = {
      username     = "584512"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Andrew Pham"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    536521 = {
      username     = "536521"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "ASCENTTBusinessSolutions"
        "User Manager"   = "Amandeep Chanana"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955004"
      }
    }
    528372 = {
      username     = "528372"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Peter Amstutz"
        "Manager Dept"   = "TMN Toyota Motor North America "
        "Cost Center"    = "955072"
      }
    }
    548500 = {
      username     = "548500"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "CONNECTEDX"
        "User Manager"   = "Srikanth Kintali"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "109002"
      }
    }
    555910 = {
      username = "555910"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Srinivas Hotha"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955044"
      }
    }
    552515 = {
      username     = "552515"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    603750 = {
      username     = "603750"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Michael Gutierrez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    580376 = {
      username = "580376"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Doug Sowers"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    565346 = {
      username     = "565346"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager"   = "Michael Light"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    557890 = {
      username     = "557890"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    526158 = {
      username     = "526158"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Rajesh Emani"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955004"
      }
    }
    576199 = {
      username = "576199"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955025"
      }
    }
    542044 = {
      username     = "542044"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Daniel Hibbard"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }
    588797 = {
      username     = "588797"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Ram Kurapati"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    598727 = {
      username     = "598727"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Mahesh Jaddangi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    530301 = {
      username = "530301"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Ivan Gonzalez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955023"
      }
    }
    557467 = {
      username = "557467"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager"   = "Michael Light"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    577244 = {
      username     = "577244"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    568905 = {
      username = "568905"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    595917 = {
      username     = "595917"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    556620 = {
      username = "556620"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Daniel Hibbard"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955005"
      }
    }
    534912 = {
      username = "534912"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Mike White"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955023"
      }
    }
    472236 = {
      username = "472236"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Mark Morris"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955088"
      }
    }
    597026 = {
      username = "597026"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Srinivas Prasad"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    554108 = {
      username = "554108"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    573153 = {
      username     = "573153"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    603327 = {
      username     = "603327"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Garred Austin"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    507641 = {
      username     = "507641"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    602712 = {
      username     = "602712"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Srinivas Hotha"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    572628 = {
      username = "572628"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Stella Santiago"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955003"
      }
    }
    589789 = {
      username     = "589789"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Steve Kang"
        "Manager Dept"   = "Toyota Motor Sales_ USA_Inc_"
        "Cost Center"    = "700050"
      }
    }
    519339 = {
      username     = "519339"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    593868 = {
      username = "593868"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Gopalakrishna Bhat"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955002"
      }
    }
    599167 = {
      username     = "599167"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    599077 = {
      username = "599077"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }
    551337 = {
      username     = "551337"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "James Tu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955072"
      }
    }
    586625 = {
      username     = "586625"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    589215 = {
      username = "589215"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Scientila Duddempudi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }
    553544 = {
      username = "553544"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager"   = "Michael Light"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955025"
      }
    }
    589319 = {
      username     = "589319"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Tom Miller"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955085"
      }
    }
    585586 = {
      username     = "585586"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "TMNA"
        "User Manager"   = "Wei Tan"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955034"
      }
    }
    146641 = {
      username     = "146641"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "321007"
      }
    }
    527922 = {
      username = "527922"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Charlene Govender"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955044"
      }
    }
    586646 = {
      username = "586646"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "William Hie"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    179061 = {
      username     = "179061"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "TMNA"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "550251"
      }
    }
    542915 = {
      username     = "542915"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    139498 = {
      username = "139498"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955045"
      }
    }
    520947 = {
      username = "520947"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Jason Kazee"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "500001"
      }
    }
    564250 = {
      username = "564250"
      tags = {
        "CW-Provider" = "ASCENTTBusinessSolutions"
        "User Manager"   = "Amandeep Chanana"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955003"
      }
    }
    580754 = {
      username = "580754"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Lauren Drew"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }
    587063 = {
      username = "587063"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Cindy Wei"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955063"
      }
    }
    584957 = {
      username = "584957"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Amandeep Chanana"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }
    593814 = {
      username     = "593814"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Tom Miller"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955085"
      }
    }
    534766 = {
      username = "534766"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Krishna Eranki"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    598234 = {
      username     = "598234"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Salima Rizvi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }
    605485 = {
      username = "605485"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave2_set6"
  }
}
