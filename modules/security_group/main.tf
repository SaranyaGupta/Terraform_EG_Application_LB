resource "aws_security_group" "project-iac-sg" {
  name = var.name
  description = var.description
  vpc_id = var.vpc_id

  // To Allow SSH Transport

  // To Allow Port 80 Transport
}