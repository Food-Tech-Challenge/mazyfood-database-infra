resource "aws_db_subnet_group" "subnet_group" {
  name       = "${var.project}-subnet-group-db"
  subnet_ids = toset(data.aws_subnets.private.ids)

  tags = {
    Name = "${var.project}-subnet-group-db"
  }
}

resource "aws_security_group" "security_group" {
  name   = "${var.project}-security-group-db"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project}-security-group-db"
  }
}
