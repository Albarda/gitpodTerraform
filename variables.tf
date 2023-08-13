variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "resource_alias" {
  description = "Your name"
  type        = string
  default     = "daria"
}

variable "vpc_cidr" {
  description = "Your name"
  type        = string
  default     = "10.0.0.0/16"
}
variable "ec2_alias" {
  description = "ec2 name"
  type = string
  default = "alonbarda"
  }