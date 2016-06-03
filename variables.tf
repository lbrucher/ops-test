variable "aws_access_key" {
	default = ""
}
variable "aws_secret_key" {
	default = ""
}

variable "aws_region"{
	default = "us-east-1"
}

variable "atlas" {
  description = "(Required) Details about this Atlas environment"
  type = "map"

  default = {
    # the Atlas organization for this environment (ex. MDL)
    org = "local"
    # the Atlas environment name for this Terraform infrastructure (ex. global)
    env = "local"
  }
}
