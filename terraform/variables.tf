variable "project_name" {
  description = "Project tag prefix for resources"
  type        = string
  default     = "epicbook"
}

variable "aws_region" {
  description = "AWS region to deploy"
  type        = string
  default     = "us-east-1"
}

variable "availability_zone_a" {
  description = "First AZ for subnet A"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_b" {
  description = "Second AZ for subnet B"
  type        = string
  default     = "us-east-1c"
}


variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string  
  default     = "10.10.0.0/16"
}

variable "public_subnet_a_cidr" {
  description = "CIDR for public subnet A"
  type        = string
  default     = "10.10.1.0/24"
}

variable "public_subnet_b_cidr" {
  description = "CIDR for public subnet B"
  type        = string
  default     = "10.10.2.0/24"
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
  default     = "ubuntu-key"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH into instances (e.g., your office IP/32)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "frontend_ami" {
  description = "AMI ID for frontend (Ubuntu 22.04)"
  type        = string
  default     = "ami-08c40ec9ead489470"
}

variable "backend_ami" {
  description = "AMI ID for backend (Amazon Linux 2)"
  type        = string
  default     = "ami-0c101f26f147fa7fd"
}

variable "frontend_instance_type" {
  description = "Instance type for frontend"
  type        = string
  default     = "t3.micro"
}

variable "backend_instance_type" {
  description = "Instance type for backend"
  type        = string
  default     = "t3.micro"
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_engine_version" {
  description = "MySQL engine version"
  type        = string
  default     = "8.0.36"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "epicbook_db"
}

variable "db_username" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "create_ssm_parameters" {
  description = "Whether Terraform should create SSM parameters for DB creds"
  type        = bool
  default     = true
}

variable "db_publicly_accessible" {
  description = "Whether RDS should be publicly accessible"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Common tags to apply"
  type        = map(string)
  default     = {
    Environment = "dev"
    Owner       = "DevOps"
    App         = "EpicBook"
  }
}

