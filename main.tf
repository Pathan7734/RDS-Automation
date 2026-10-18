provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "demo_rds" {
  identifier           = "demo-rds-instance"
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "15.18"   # ✅ valid version
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "SuperSecurePass123!"
  skip_final_snapshot  = true
  publicly_accessible  = true
}
