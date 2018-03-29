resource "aws_elasticsearch_domain" "hesperides-elasticsearch" {
  domain_name = "hesperides-elasticsearch"
  elasticsearch_version = "${var.aws_elasticsearch_version}"

  advanced_options {
    "rest.action.multi.allow_explicit_index" = "true"
  }

  cluster_config {
    instance_type = "${var.aws_elasticsearch_instance_type}"
    instance_count = "1"
  }

  ebs_options {
    ebs_enabled = true
    volume_type = "gp2"
    volume_size = "10"
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }
}
