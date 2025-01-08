# Terraform Module: SQL Database

Этот модуль Terraform создает и настраивает SQL базу данных.

## Использование

```hcl
module "sql_database" {
  source = "git::https://your-repo-url.git//path/to/module"

  db_name     = "example_db"
  db_user     = "example_user"
  db_password = "example_password"
  // ...другие параметры...
}
```

## Параметры

| Параметр     | Тип     | Описание                         | Обязательный | Значение по умолчанию |
|--------------|---------|----------------------------------|--------------|-----------------------|
| `db_name`    | string  | Имя базы данных                  | да           |                       |
| `db_user`    | string  | Имя пользователя базы данных     | да           |                       |
| `db_password`| string  | Пароль пользователя базы данных  | да           |                       |
| `db_port`    | number  | Порт для подключения к базе данных | нет          | `5432`                |
| `db_host`    | string  | Хост базы данных                 | нет          | `localhost`           |

## Выходные данные

| Выходные данные | Описание                         |
|-----------------|----------------------------------|
| `db_url`        | URL подключения к базе данных    |
| `db_id`         | Идентификатор базы данных        |

## Примеры

### Пример использования с минимальными параметрами

```hcl
module "sql_database" {
  source = "git::https://your-repo-url.git//path/to/module"

  db_name     = "example_db"
  db_user     = "example_user"
  db_password = "example_password"
}
```

### Пример использования с дополнительными параметрами

```hcl
module "sql_database" {
  source = "git::https://your-repo-url.git//path/to/module"

  db_name     = "example_db"
  db_user     = "example_user"
  db_password = "example_password"
  db_port     = 3306
  db_host     = "db.example.com"
}
```

## Требования

- Terraform >= 0.12

## Авторы

Этот модуль создан и поддерживается [Вашим именем или командой].

## Лицензия

Этот проект лицензирован под лицензией MIT. Подробности см. в файле LICENSE.
