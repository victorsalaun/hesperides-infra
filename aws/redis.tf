resource "aws_elasticache_replication_group" "redis" {
  replication_group_id = "redis"
  replication_group_description = "Redis cluster for Hashicorp ElastiCache example"

  node_type = "${var.aws_redis_node_type}"
  engine = "redis"
  engine_version = "${var.aws_redis_version}"
  port = 6379
  parameter_group_name = "default.redis2.8"

  automatic_failover_enabled = false

  cluster_mode {
    replicas_per_node_group = 0
    num_node_groups         = 1
  }
}