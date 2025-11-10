variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "sub1_block" {
  description = "The CIDR block for the subnet1"
  type        = string
  default     = "10.0.0.0/24"
}

variable "sub2_block" {
  description = "The CIDR block for the subnet2"
  type        = string
  default     = "10.0.1.0/24"
}


