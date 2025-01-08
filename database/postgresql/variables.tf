
variable "project_id" {
  description = "The progect_ID"
  type        = string
}

variable "region" {
  description = "The region in GCP"
  type        = string
}

variable "db_instance_name" {
  description = "The db_instance_name"
  type        = string
}

variable "db_version" {
  description = "The db_version"
  type        = string
  default = "POSTGRES_14"
}

variable "db_name" {
  description = "Имя базы данных"
  type        = string
}

variable "db_user" {
  description = "Имя пользователя базы данных"
  type        = string
}

variable "db_password" {
  description = "Пароль пользователя базы данных"
  type        = string
  sensitive   = true
}

variable "db_port" {
  description = "Порт для подключения к базе данных"
  type        = number
  default     = 5432
}

variable "db_host" {
  description = "Хост базы данных"
  type        = string
  default     = "localhost"
}