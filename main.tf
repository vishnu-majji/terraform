terraform {
  required_version = ">= 1.5.0"
}

variable "environment" {
  type    = string
  default = "dev"
}

resource "terraform_data" "app" {
  input = {
    application = "payment-api"
    environment = var.environment
  }
}

output "deployment_details" {
  value = terraform_data.app.output
}
