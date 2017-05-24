
resource "aws_vpc" "network" {
  cidr_block       = "${var.vpc_cidr}"
  tags{
     Name          = "Pariwar_dreams"
 }
}

output "vpc" {
        value      = "${aws_vpc.network.id}"
  }

resource "aws_subnet" "public"{
        vpc_id     = "${aws_vpc.network.id}"
        cidr_block =" ${var.public_subnet_cidr}"
  }

  output "vpc" {
          value      = "${aws_subnet.public.id}"
    }

resource "aws_subnet" "private" {
        vpc_id     = "{aws_vpc.network.id}"
        cidr_block = "{var.private_subnet_cidr}"
}

output "vpc" {
        value      = "${aws_subnet.private.id}"
  }


resource "aws_internet_gateway" "igw" {
            vpc_id = "${aws_vpc.network.id}"

  tags {
    Name = "Internet_gateway"
  }
}

  resource "aws_route_table" "networkroute" {
           vpc_id = "${aws_vpc.network.id}"

  route {
      cidr_block = "${var.internet_cidr_block}"
      gateway_id = "${aws_internet_gateway.igw.id}"

    }
  }
