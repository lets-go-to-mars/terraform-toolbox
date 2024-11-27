variable "cluster_name" {
  description = "The name of the cluster"
  type        = string  
}

variable "cluster_engine" {
  description = "The name of the database engine to be used for this cluster"
  type        = string
  default     = "aurora-postgresql"
}

variable "cluster_engine_version" {
  description = "The version of the database engine to be used for this cluster"
  type        = string
  default     = "14.5"
}

variable "cluster_instance_class" {
  description = "The instance class to use for the cluster"
  type        = string
  default     = "db.r6g.large"
}

variable "cluster_instances" {
  description = "A map of instance configurations to use for the cluster"
  type        = map(object({
    instance_class = string
  }))
  default     = {
    one = {}
    2 = {
      instance_class = "db.r6g.2xlarge"
    }
  }
}

variable "vpc_id" {
  description = "The ID of the VPC in which to create the cluster"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group to use for the cluster"
  type        = string
}

variable "cluster_create_security_group" {
  description = "Create a security group for the cluster"
  type        = bool
  default     = true
}

variable "cluster_security_group_rules" {
  description = "A map of security group rules to apply to the cluster"
  type        = map(object({
    cidr_blocks            = list(string)
    source_security_group_id = string
  }))
}

variable "cluster_security_group_tags" {
  description = "A map of tags to apply to the security group"
  type        = map(string)
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to apply to the cluster"
  type        = list(string)
}

variable "cluster_tags" {
  description = "A map of tags to apply to the cluster"
  type        = map(string)
}