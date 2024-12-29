# Type string
variable "aws_region" {
  type        = string
  description = "La région AWS où déployer les ressources"
}

variable "ami_id" {
  type        = string
  description = "L'AMI pour l'instance EC2"
}

# Type string
variable "instance_type" {
  type        = string
  description = "Le type de l'instance EC2"
}

# Type bool
variable "enable_logging" {
  type        = bool
  description = "Activer ou désactiver les logs"
  default     = true
}

# Type list
variable "allowed_ports" {
  type        = list(number)
  description = "Les ports ouverts pour l'instance"
  default     = [22, 80] # SSH et HTTP
}

# Type map
variable "tags" {
  type        = map(string)
  description = "Tags for the resources"
  default = {
    Environment = "Dev"
    Team        = "Engineering"
  }
}

# Type object
variable "instance_advanced_config" {
  type = object({
    root_volume_size = number
    monitoring       = bool
  })
  description = "Configuration avancée pour l'instance"
  default = {
    root_volume_size = 20
    monitoring       = true
  }
}

# Type string 
variable "security_group_name" {
  type        = string
  description = "Security group Name"
  default     = "web-sec-group"
}

variable "instance_name" {
  type        = string
  description = "Nom de l'instance"
}
