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
    555039= {
      username             = "555039"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Bryan Schmidt"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   470919= {
      username             = "470919"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Andrew Pham"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }
   583533= {
      username             = "583533"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   567283= {
      username             = "567283"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jolene Mawson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   581841= {
      username             = "581841"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Sarkis Nalchadjian"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

    554464= {
      username             = "554464"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Pradeep Parvataneni"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955089"
      }
   }

   555152= {
      username             = "555152"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Garred Austin"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

   519624= {
      username             = "519624"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Akhila Guntur"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
      }
   }
   586139= {
      username             = "586139"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Adithya Raghuraman"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
      }
   }

   573255= {
      username             = "573255"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gupta Wijeratne"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955088"
      }
   }

   552728= {
      username             = "552728"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   550470= {
      username             = "550470"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Garred Austin"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

   599976= {
      username             = "599976"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Brian Kelly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }
   571615= {
      username             = "571615"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "DELOITTE CONSULTING LLP"
         "User Manager"    = "Srinivas Prasad"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "124005"
      }
   }

   598442= {
      username             = "598442"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mohan Ravi"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
      }
   }
   598780= {
      username             = "598780"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   596636= {
      username             = "596636"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rich Husa"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955025"
      }
   }

   577173= {
      username             = "577173"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Lauren Drew"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955074"
      }
   }

   415510= {
      username             = "415510"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Angela Murthil"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "550251"
      }
   }
   574377= {
      username             = "574377"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
      }
   }
   574112= {
      username             = "574112"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Akhila Guntur"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955046"
      }
   }
   472194= {
      username             = "472194"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mohan Ravi"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955001"
      }
   }

   533499= {
      username             = "533499"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Marshall Dempsey"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955023"
      }
   }

   558590= {
      username             = "558590"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mark Morris"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955088"
      }
   }

   585211= {
      username             = "585211"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "CONNECTEDX"
         "User Manager"    = "Adithya Raghuraman"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
      }
   }
   470252= {
      username             = "470252"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Ting-Mou Wu"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   582178= {
      username             = "582178"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Dennis Choy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

   567288= {
      username             = "567288"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

   443894= {
      username             = "443894"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Amir Alipour"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955090"
      }
   }

   575551= {
      username             = "575551"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Garred Austin"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

   509823= {
      username             = "509823"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
      }
   }

   600693= {
      username             = "600693"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "MINDTREE LTD"
         "User Manager"    = "Ben Takahashi"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
      }
   }

   580341= {
      username             = "580341"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
      }
   }

   410342= {
      username             = "410342"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Computech"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955063"
      }
   }
   576871= {
      username             = "576871"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Sarkis Nalchadjian"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955006"
      }
   }

   599640= {
      username             = "599640"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "William Hie"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }

    593378= {
      username             = "593378"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "DELOITTE CONSULTING LLP"
         "User Manager"    = "Srinivas Prasad"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
      }
   }

    541090= {
      username             = "541090"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Doug Sowers"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    569312= {
      username             = "569312"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
        }
    }

    551901= {
      username             = "551901"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    570697= {
      username             = "570697"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Sarkis Nalchadjian"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955006"
        }
    }

    433766= {
      username             = "433766"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Sridevi Nimmagadda"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

    554045= {
      username             = "554045"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955074"
        }
    }
    592334= {
      username             = "592334"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Uday Jullapally"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    537842= {
      username             = "537842"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    406980= {
      username             = "406980"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

    545535= {
      username             = "545535"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Neelima Venreddy"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "322006"
        }
    }

    572624= {
      username             = "572624"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mark Morris"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955088"
        }
    }


    592364= {
      username             = "592364"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "ASCENTTBusinessSolutions"
         "User Manager"    = "Amandeep Chanana"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955004"
        }
    }

    585683= {
      username             = "585683"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
        }
    }

    416765= {
      username             = "416765"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Adithya Raghuraman"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955115"
        }
    }

    580278= {
      username             = "580278"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    570725= {
      username             = "570725"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

    564247= {
      username             = "564247"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Beth Ocelli"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955074"
        }
    }

    588795= {
      username             = "588795"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "IBM CORP"
         "User Manager"    = "Rekha Singh"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955109"
        }
    }

    516847= {
      username             = "516847"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
        }
    }

    181394= {
      username             = "181394"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Srinivas Hotha"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    550505= {
      username             = "550505"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
        }
    }

    581442= {
      username             = "581442"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    550381= {
      username             = "550381"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    585053= {
      username             = "585053"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Brian Lieberson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    561559= {
      username             = "561559"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

    517188= {
      username             = "517188"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Uday Jullapally"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    571854= {
      username             = "571854"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jolene Mawson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    595398= {
      username             = "595398"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    526982= {
      username             = "526982"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Neelima Venreddy"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "322006"
        }
    }

    564473= {
      username             = "564473"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Ernst_YoungUSLLP"
         "User Manager"    = "Doug Willett"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "956621"
        }
    }

    539601= {
      username             = "539601"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

    596389= {
      username             = "596389"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    599507= {
      username             = "599507"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "DELOITTE CONSULTING LLP"
         "User Manager"    = "CNM Reddy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set8"
  }
}
