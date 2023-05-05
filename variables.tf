#providers files
variable "region" {
  default = "us-west-2"
}

variable "private_subnet_ids" {
  default = ["subnet-id-1", "subnet-id-2"]
}

variable "public_subnet_ids" {
  default = ["subnet-id-3", "subnet-id-4"]
}

variable "availability_zone" {
  default = "us-west-2a"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr_block" {
  type    = string
  default = "10.0.2.0/24"
}

# security-groups file
variable "backend_from_port" {
  default = 8080
}

variable "backend_to_port" {
  default = 8080
}

variable "backend_protocol" {
  default = "tcp"
}

variable "backend_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "database_from_port" {
  default = 3306
}

variable "database_to_port" {
  default = 3306
}

variable "database_protocol" {
  default = "tcp"
}

variable "database_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "frontend_from_port" {
  default = 80
}

variable "frontend_to_port" {
  default = 80
}

variable "frontend_protocol" {
  default = "tcp"
}

variable "frontend_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "ecs_cluster_name" {
  type    = string
  default = "my-cluster"
}

#ecs_task_definition files

variable "database_task_role_arn" {
  type    = string
  default = "value"
}

variable "database_execution_role_arn" {
  type    = string
  default = "value"
}

variable "database_cpu" {
  type    = string
  default = "value"
}

variable "database_memory" {
  type    = string
  default = "value"
}

variable "database_image" {
  type    = string
  default = "value"
}

variable "database_port" {
  type    = number
  default = 1
}

variable "database_url" {
  type    = string
  default = "value"
}

variable "frontend_task_role_arn" {
  type    = string
  default = "value"
}

variable "frontend_execution_role_arn" {
  type    = string
  default = "value"
}

variable "frontend_cpu" {
  type    = string
  default = "value"
}

variable "frontend_memory" {
  type    = string
  default = "value"
}

variable "frontend_image" {
  type    = string
  default = "value"
}

variable "frontend_port" {
  type    = number
  default = 1
}

variable "frontend_url" {
  type    = string
  default = "value"
}

variable "backend_task_role_arn" {
  type    = string
  default = "value"
}

variable "backend_cpu" {
  type    = string
  default = "value"
}

variable "backend_memory" {
  type    = string
  default = "value"
}

variable "backend_image" {
  type    = string
  default = "value"
}

variable "backend_port" {
  type    = number
  default = 1
}

variable "backend_url" {
  type    = string
  default = "value"
}
