provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

module "network" {
  source     = "./network"
}

module "security" {
  source     = "./security"
}

module "ec2" {
  source     = "./ec2"
}
