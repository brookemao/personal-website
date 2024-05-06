provider "google" {
  project = var.project_name
  region  = "us-west1"
  zone    = "us-west1-a"
}

provider "cloudflare" {
  api_token = var.cloudflare_api_key
}


terraform {
  #Disable this if you need to bootstrap this terraform
    backend "gcs" {
    bucket = "9c9fdc2d4a4c80da-bmao-bucket-tfstate"
    prefix = "terraform/state"
  }
}

module "site" {
  source = "./website-tf"

  providers = {
    google = google
    cloudflare = cloudflare
  }
  
  account_id = var.account_id
  domain = var.domain
  site_name = var.site_name
  project_name = var.project_name
}




