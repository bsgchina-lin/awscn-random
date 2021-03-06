terraform {
  required_providers {
    random = "~> 2.0"
  }
}

variable "varname" {
#  default = "Beta"
  default = "Prod"
}

variable "name" {
  default = ""
}

module "demo" {
  source  = "app.terraform.io/bsgchina/demo/random"
  version = "1.0.0"
#  source  = "git::https://github.com/bsgchina-lin/terraform-random-demo.git?ref=v1.0.0"
#  source  = "git@github.com:bsgchina-lin/terraform-random-demo.git"
#  source  = "tfe.better-service.cloud:9443/bsgchina/demo/random"
#  source  = "./terraform-random-demo"
#  version = "1.0.0"
  name = "NameVarInModule"
}

output "random_in_module_is" {
  value = module.demo.random_output
}

output "name_in_module_is" {
  value = module.demo.name_var_output
}
