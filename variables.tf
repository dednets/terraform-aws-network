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
