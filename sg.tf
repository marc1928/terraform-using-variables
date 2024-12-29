# Groupe de sécurité
resource "aws_security_group" "web_sg" {
  name        = var.security_group_name
  description = "Security Group of the EC2 instance"

  ingress {
    from_port   = var.allowed_ports[0] # Premier port
    to_port     = var.allowed_ports[1] # Deuxième port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}
