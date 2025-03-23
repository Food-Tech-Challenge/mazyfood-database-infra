resource "aws_db_instance" "db_instance" {
  identifier        = "${var.project}-db"
  engine            = "postgres"
  engine_version    = "16.8"
  instance_class    = "db.t4g.micro"
  allocated_storage = 20

  username = "mazyadmin"
  password = "mazyadmin"
  db_name  = "mazyfood"

  vpc_security_group_ids = [aws_security_group.security_group.id]
  db_subnet_group_name   = aws_db_subnet_group.subnet_group.name

  tags = {
    Name = "${var.project}-db"
  }

  depends_on = [
    aws_security_group.security_group,
    aws_db_subnet_group.subnet_group,
  ]

  skip_final_snapshot = true
}
