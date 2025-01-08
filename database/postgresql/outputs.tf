output "db_url" {
  description = "URL подключения к базе данных"
  value       = "postgresql://${var.db_user}:${var.db_password}@${var.db_host}:${var.db_port}/${var.db_name}"
}

output "db_id" {
  description = "Идентификатор базы данных"
  value       = random_id.db_id.hex
}
