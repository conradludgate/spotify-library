terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.4"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  auth_server = "https://oauth2.conrad.cafe"
  username    = "conradludgate"

  api_key  = var.api_key
  token_id = var.token_id
}

variable "api_key" {
  type = string
}

variable "token_id" {
  type = string
}
