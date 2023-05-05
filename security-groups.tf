# security_group.tf
resource "aws_security_group" "backend_sg" {
  name        = "backend_sg"
  description = "Security group for backend service"

  ingress {
    from_port   = var.backend_from_port
    to_port     = var.backend_to_port
    protocol    = var.backend_protocol
    cidr_blocks = var.backend_cidr_blocks
  }
}

resource "aws_security_group" "database_sg" {
  name        = "database_sg"
  description = "Security group for database service"

  ingress {
    from_port   = var.database_from_port
    to_port     = var.database_to_port
    protocol    = var.database_protocol
    cidr_blocks = var.database_cidr_blocks
  }
}

resource "aws_security_group" "frontend_sg" {
  name        = "frontend_sg"
  description = "Security group for frontend service"

  ingress {
    from_port   = var.frontend_from_port
    to_port     = var.frontend_to_port
    protocol    = var.frontend_protocol
    cidr_blocks = var.frontend_cidr_blocks
  }
}
