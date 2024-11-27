module "aurora_cluster" {
  source  = "terraform-aws-modules/rds-aurora/aws"

  name           = var.cluster_name
  engine         = var.cluster_engine
  engine_version = var.cluster_engine_version
  instance_class = var.cluster_instance_class
  instances = var.cluster_instances

  vpc_id               = var.vpc_id
  db_subnet_group_name = "db-subnet-group"
  security_group_rules = {
    ex1_ingress = {
      cidr_blocks = ["10.20.0.0/20"]
    }
    ex1_ingress = {
      source_security_group_id = "sg-12345678"
    }
  }

  storage_encrypted   = true
  apply_immediately   = true
  monitoring_interval = 10

  enabled_cloudwatch_logs_exports = ["postgresql"]

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}