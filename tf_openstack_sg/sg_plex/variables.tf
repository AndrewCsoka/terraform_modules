// Module specific variables

variable "security_group_name" {
  description = "The name for the security group"
}

variable "region" {
  description = "The region this security group will exist in"
}

variable "access_cidr" {
  description = "The source CIDR block to allow traffic from"
  type        = "string"
}
