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

   553476= {
     username             = "553476"
     tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
      }
   }
   460119 = {
    username             = "460119"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Mohan Ravi"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955017"
      }
   }
   577366= {
    username             = "577366"
    tags = {
       "CW-Provider"     = "MINDTREE LTD"
       "User Manager"    = "Ben Takahashi"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955043"
       }
   }
   526578 = {
    username             = "526578"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Simson Elakattu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955020"
      }
   }
   582886= {
    username             = "582886"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Mark Morris"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955088"
      }
   }
   566017 = {
    username             = "566017"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Ting-Mou Wu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
    579327= {
    username             = "579327"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Jai Kumar Dhanasekar"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
    583908= {
    username             = "583908"
    tags = {
       "CW-Provider"     = "IBM CORP"
       "User Manager"    = "Rekha Singh"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955109"
      }
   }
   556167= {
    username             = "556167"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Simson Elakattu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955020"
      }
   }
   583538= {
    username             = "583538"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Terry Harrison"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955041"
      }
   }
   181016 = {
    username             = "181016"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Michael Gutierrez"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955108"
      }
   }
   574905= {
    username             = "574905"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Uday Jullapally"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
   577855= {
    username             = "577855"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Simson Elakattu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955020"
      }
   }
   466229= {
    username             = "466229"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Sarkis Nalchadjian"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955115"
      }
   }
   575102= {
    username             = "575102"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Srinivas Hotha"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955044"
      }
   }
   596372 = {
    username             = "596372"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Rich Husa"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955025"
    }
 }
   571415 = {
    username             = "571415"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Rajesh Emani"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955005"
    }
 }
 566833= {
    username             = "566833"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
    }
 }
 597025= {
    username             = "597025"
    tags = {
       "CW-Provider"     = "DELOITTE CONSULTING LLP"
       "User Manager"    = "Srinivas Prasad"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955109"
    }
 }
  599540= {
    username             = "599540"
    tags = {
       "CW-Provider"     = "DELOITTE CONSULTING LLP"
       "User Manager"    = "CNM Reddy"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955017"
    }
 }
569850= {
    username             = "569850"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Garred Austin"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955108"
    }
 }
 427870= {
    username             = "427870"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Amy Speer"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955071"
    }
  }
    568921= {
    username             = "568921"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
    }
 }
  574899= {
    username             = "574899"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Wayne Mattingly"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955041"
    }
 }
  600933= {
    username             = "600933"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Simson Elakattu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955020"
    }
 }
  552334 = {
    username             = "552334"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Srinivas Hotha"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
    }
 }
  581687 = {
    username             = "581687"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Wayne Mattingly"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955026"
    }
 }
  516539 = {
    username             = "516539"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Simson Elakattu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955020"
    }
 }
 577852 = {
    username             = "577852"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Simson Elakattu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955020"
    }
 }
  601353= {
    username             = "601353"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
    }
 }
  535471= {
    username             = "535471"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Cynthia Morse"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "956512"
    }
 }
 593229= {
    username             = "593229"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Simson Elakattu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955020"
    }
 }
   575559 = {
    username             = "575559"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Jai Kumar Dhanasekar"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
    }
 }
 577675= {
    username             = "577675"
    tags = {
       "CW-Provider"     = "MINDTREE LTD"
       "User Manager"    = "Sandeep Dhanuk"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955002"
    }
 }
  552853= {
    username             = "552853"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Daniel Hibbard"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955005"
    }
 }
   581033 = {
    username             = "581033"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
    }
 }
   586648 = {
    username             = "586648"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Brian Lieberson"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
    }
 }
   594325 = {
    username             = "594325"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
    }
 }
    468988= {
    username             = "468988"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Mohan Ravi"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955017"
    }
 }
    551428= {
    username             = "551428"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Jai Kumar Dhanasekar"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
    }
 }
     151065= {
    username             = "151065"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Andrew Pham"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955041"
      }
   }
     552931= {
    username             = "552931"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Sarkis Nalchadjian"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955108"
      }
   }
      507427= {
    username             = "507427"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Uday Jullapally"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955041"
     }
   }
    596356 = {
    username             = "596356"
    tags = {
       "CW-Provider"     = "EnterpriseVisionTechnology"
       "User Manager"    = "Phil Reuter"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955048"
      }
   }
     585625= {
    username             = "585625"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Engels Tang"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
      }
   }
    539210 = {
    username             = "539210"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Rajesh Emani"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
     558612= {
    username             = "558612"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Lauren Drew"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955074  "
      }
   }
    566020 = {
    username             = "566020"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Ting-Mou Wu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
     597542= {
    username             = "597542"
    tags = {
       "CW-Provider"     = "HITACHICONSULTING"
       "User Manager"    = "Stella Santiago"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955017"
      }
   }
    550516 = {
    username             = "550516"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Jai Kumar Dhanasekar"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
     600934= {
    username             = "600934"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Simson Elakattu"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955020"
      }
   }
     525364= {
    username             = "525364"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Bryan Schmidt"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955041"
      }
   }
     527771= {
    username             = "527771"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Oakley Higgins"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955026"
      }
   }
     585642= {
    username             = "585642"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Michael Gutierrez"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955108"
      }
   }
     576453= {
    username             = "576453"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "NA"
       "Manager Dept"    = "NA"
       "Cost Center"     = "NA"
      }
   }
     553511= {
    username             = "553511"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Lauren Drew"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955074"
      }
   }
     553851= {
    username             = "553851"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Brian Lieberson"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
     542287= {
    username             = "542287"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Freddy Khan"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955026"
      }
   }
     412680= {
    username             = "412680"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Bryan Schmidt"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
     581282= {
    username             = "581282"
    tags = {
       "CW-Provider"     = "LEADINGTORCHLLC"
       "User Manager"    = "Mary Holloway"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955088"
      }
   }
    411786 = {
    username             = "411786"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Lauren Drew"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955074"
      }
   }
     587074= {
    username             = "587074"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "BJ McClure"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955002"
      }
   }
   599508= {
    username             = "599508"
    tags = {
       "CW-Provider"     = "DELOITTE CONSULTING LLP"
       "User Manager"    = "CNM Reddy"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955017"
      }
   }
   416926= {
    username             = "416926"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Wayne Mattingly"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
    525681 = {
    username             = "525681"
    tags = {
       "CW-Provider"     = "Cognizant Technology Solutions"
       "User Manager"    = "Pradeep Parvataneni"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955042"
      }
   }
    526957 = {
    username             = "526957"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Salman Ghauri"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955023"
      }
   }
     570407= {
    username             = "570407"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Stella Santiago"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955003"
      }
   }
    591118 = {
    username             = "591118"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Adithya Raghuraman"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955066"
      }
   }
    451461 = {
    username             = "451461"
    tags = {
       "CW-Provider"     = "InfosysLimited"
       "User Manager"    = "Sooraj Raghav Srinivasan"
       "Manager Dept"    = "TMN Toyota Motor North America"
       "Cost Center"     = "955063"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set2"

  }
}
