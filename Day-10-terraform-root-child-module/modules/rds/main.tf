# RDS Subnet Group
resource "aws_db_subnet_group" "this" {
  name       = "rds-subnet-group"
  subnet_ids = [var.subnet_id]

  tags = {
    Name = "rds-subnet-group"
  }
}
resource "aws_db_instance" "this" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = var.instance_class
  db_name                 = var.db_name
  username             = var.db_user
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.this.name
  skip_final_snapshot  = true
  publicly_accessible  = true

  tags = {
    Name = "custom-rds-instance"
  }
}


