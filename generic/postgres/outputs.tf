output "sql_applied" {
  value = "SQL file ${var.init_sql_path} has been applied to the PostgreSQL database ${var.postgres_db}."
}