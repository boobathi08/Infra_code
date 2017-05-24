variable "vpc_cidr" {
  default          = "10.2.0.0/16"
}

variable "public_subnet_cidr" {
  default          = "10.2.3.0/24"
}

variable "private_subnet_cidr" {
  default          = "10.2.4.0/24"
}

variable "internet_cidr_block" {
  default = "10.2.3.0/24"
}
