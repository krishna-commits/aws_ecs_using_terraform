resource "aws_ecs_service" "database" {
  name            = "database"
  task_definition = aws_ecs_task_definition.database.arn
  desired_count   = 1
  launch_type     = "FARGATE"
  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.database_sg.id]
    assign_public_ip = true
  }
}

resource "aws_ecs_service" "frontend" {
  name            = "frontend"
  task_definition = aws_ecs_task_definition.frontend.arn
  desired_count   = 1
  launch_type     = "FARGATE"
  network_configuration {
    subnets          = var.public_subnet_ids
    security_groups  = [aws_security_group.backend_sg.id]
    assign_public_ip = true
  }
}

resource "aws_ecs_service" "backend" {
  name            = "backend"
  task_definition = aws_ecs_task_definition.backend.arn
  desired_count   = 1
  launch_type     = "FARGATE"
  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.backend_sg.id]
    assign_public_ip = true
  }
}
