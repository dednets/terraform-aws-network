variable "terraform_version" {
  type        = string
  description = "The version of the Terraform CLI"
  default     = "0.13.5"
}

variable "vpc_name" {
  description = "The VPC name. Also used to set subnet names prefix"
  type        = string
}

variable "cidr" {
  description = "CIDR block of AWS VPC. Default: '10.0.0.0/16'"
  default     = "10.0.0.0/16"
  type        = string
}

variable "tags" {
  description = "VPC tags. Default: '[]'. Example: '[{\"Env\"=\"development\"}]'"
  default     = {}
  type        = map(any)
}
