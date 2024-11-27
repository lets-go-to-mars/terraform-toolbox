module "aurora_cluster" {
  source  = "terraform-aws-modules/rds-aurora/aws"

  name           = var.cluster_name
  engine         = var.cluster_engine
  engine_version = var.cluster_engine_version
  instance_class = var.cluster_instance_class
  instances = var.cluster_instances

  vpc_id               = var.vpc_id
  db_subnet_group_name = var.db_subnet_group_name
  security_group_rules = var.cluster_security_group_rules
  create_security_group = var.cluster_create_security_group
  security_group_tags = merge(
    var.cluster_security_group_tags,
    local.default_tags,
  )

  storage_encrypted   = true
  apply_immediately   = true
  monitoring_interval = 10
  enabled_cloudwatch_logs_exports = ["postgresql"]
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = merge(
    var.cluster_tags,
    local.default_tags,
  )
}