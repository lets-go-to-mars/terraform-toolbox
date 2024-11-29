variable "init_sql_path" {
  description = "Path to the init.sql file"
  type        = string
}

variable "postgres_host" {
  description = "PostgreSQL server host"
  type        = string
}

variable "postgres_port" {
  description = "PostgreSQL server port"
  type        = number
  default     = 5432
}

variable "postgres_user" {
  description = "PostgreSQL user"
  type        = string
}

variable "postgres_password" {
  description = "PostgreSQL password"
  type        = string
  sensitive   = true
}

variable "postgres_db" {
  description = "PostgreSQL database name"
  type        = string
}