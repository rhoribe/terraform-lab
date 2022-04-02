

resource "aws_subnet" "subnet" {
  count             = length(var.subnet_cidr)
  vpc_id            = var.vpc_id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.availability_zone, count.index)

  tags = {
    Name = "${var.subnet_name}-${count.index + 1}"
  }
}

