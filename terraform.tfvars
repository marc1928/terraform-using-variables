aws_region = "us-east-1"

ami_id = "ami-0c55b159cbfafe1f0"
instance_type = "t2.micro"
instance_name = "web-server"

allowed_ports = [22, 443] # SSH and https

tags = {
  Project = "VariableDemo"
  Owner   = "User"
}

instance_advanced_config = {
  root_volume_size = 30
  monitoring       = false
}
