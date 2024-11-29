provider "null" {
  version = "~> 3.0"
}

resource "null_resource" "apply_sql" {
  provisioner "local-exec" {
    command = <<EOT
      PGPASSWORD=${var.postgres_password} psql -h ${var.postgres_host} -p ${var.postgres_port} -U ${var.postgres_user} -d ${var.postgres_db} -f ${var.init_sql_path}
    EOT
  }
}