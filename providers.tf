terraform {
  required_providers {
    mysql = {
      source  = "winebarrel/mysql"
      version = "1.10.5"
    }
  }
}

provider "mysql" {
  endpoint = "localhost"
  username = "root"
  password = "root"
}
