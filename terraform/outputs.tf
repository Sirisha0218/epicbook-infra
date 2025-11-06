output "frontend_public_ip" {
  description = "Public IP of the frontend server"
  value       = aws_instance.frontend.public_ip
}

output "backend_public_ip" {
  description = "Public IP of the backend server"
  value       = aws_instance.backend.public_ip
}

output "mysql_endpoint" {
  description = "RDS MySQL endpoint (FQDN)"
  value       = aws_db_instance.mysql.endpoint
}

output "mysql_db_name" {
  description = "Database name"
  value       = aws_db_instance.mysql.db_name
}

