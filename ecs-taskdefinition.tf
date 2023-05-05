# ecs_task_definition.tf

resource "aws_ecs_task_definition" "database" {
  family       = "database"
  network_mode = "awsvpc"
  task_role_arn            = var.database_task_role_arn
  execution_role_arn       = var.database_execution_role_arn
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.database_cpu
  memory                   = var.database_memory
  container_definitions = jsonencode([
    {
      name : "database",
      image : var.database_image,
      portMappings : [
        {
          containerPort : var.database_port,
          hostPort : var.database_port
        }
      ],
      environment : [
        {
          name : "DATABASE_URL",
          value : var.database_url
        }
      ]
    }
  ])
}

resource "aws_ecs_task_definition" "frontend" {
  family       = "frontend"
  network_mode = "awsvpc"
  task_role_arn            = var.frontend_task_role_arn
  execution_role_arn       = var.frontend_execution_role_arn
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.frontend_cpu
  memory                   = var.frontend_memory
  container_definitions = jsonencode([
    {
      name : "frontend",
      image : var.frontend_image,
      portMappings : [
        {
          containerPort : var.frontend_port,
          hostPort : var.frontend_port
        }
      ],
      environment : [
        {
          name : "FRONTEND_URL",
          value : var.frontend_url
        }
      ]
    }
  ])
}

resource "aws_ecs_task_definition" "backend" {
  family       = "backend"
  network_mode = "awsvpc"
  task_role_arn            = var.backend_task_role_arn
  execution_role_arn       = var.backend_execution_role_arn
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.backend_cpu
  memory                   = var.backend_memory
  container_definitions = jsonencode([
    {
      name : "backend",
      image : var.backend_image,
      portMappings : [
        {
          containerPort : var.backend_port,
          hostPort : var.backend_port
        }
      ],
      environment : [
        {
          name : "BACKEND_URL",
          value : var.backend_url
        }
      ]
    }
  ])
