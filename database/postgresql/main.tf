resource "random_id" "db_id" {
  byte_length = 8
}

resource "google_sql_database_instance" "default" {
  name             = var.db_instance_name
  database_version = var.db_version
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "default" {
  name     = var.db_name
  instance = google_sql_database_instance.default.name
}

resource "google_sql_user" "default" {
  name     = var.db_user
  instance = google_sql_database_instance.default.name
  password = var.db_password
}

resource "null_resource" "sql_database" {
  provisioner "local-exec" {
    command = <<EOT
      echo "Создание базы данных ${var.db_name} с пользователем ${var.db_user}"
      # Здесь можно добавить команды для создания базы данных
    EOT
  }
}

output "db_connection_name" {
  value = google_sql_database_instance.default.connection_name
}

output "db_instance_name" {
  value = google_sql_database_instance.default.name
}

