terraform {
  required_providers {
    btp = {
      source  = "sap/btp"
      version = "1.2.0"
    }
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.53.1"
    }
  }
}

provider "btp" {
  globalaccount = var.globalaccount
  username      = var.username
  password      = var.password
}


data "btp_subaccount_users" "defaultidp" {
  subaccount_id = "b2efcdb3-0d51-4988-a65e-b314c43bfa2d"
}
