provider "aws" {
  alias = "yalkun"
  #profile    = var.profile
  region     = var.region-main-yalkun
  access_key = var.yalkun_access_key
  secret_key = var.yalkun_secret_key
}

provider "aws" {
  alias = "gmail"
  #profile    = var.profile
  region     = var.region-main-gmail
  access_key = var.gmail_access_key
  secret_key = var.gmail_secret_key
}

provider "aws" {
  alias = "protonmail"
  #profile    = var.profile
  region     = var.region-main-protonmail
  access_key = var.protonmail_access_key
  secret_key = var.protonmail_secret_key
}