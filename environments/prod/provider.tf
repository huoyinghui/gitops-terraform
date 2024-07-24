terraform {
  required_providers {
    tencentcloud = {
      source  = "tencentcloudstack/tencentcloud"
      version = "1.81.111"
    }
  }
  # backend "cos" {
  #   region = "ap-guangzhou"
  #   bucket = "keep-gitops-prod-1308919341"
  #   prefix = "terraform/state"
  # }
}

provider "tencentcloud" {
  region = "ap-guangzhou"
}
