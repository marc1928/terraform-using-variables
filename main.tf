# Instance EC2
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.web_sg.name]

  tags = merge(var.tags, { InstanceName = var.instance_name })
}
