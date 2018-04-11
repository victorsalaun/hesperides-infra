variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_region" {
  default = "eu-west-3"
}

# beanstalk

# https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html#concepts.platforms.docker
variable "aws_beanstalk_docker_stackname" {
  default = "64bit Amazon Linux 2017.09 v2.9.2 running Docker 17.12.0-ce"
}

# elasticsearch

variable "aws_elasticsearch_instance_type" {
  default = "t2.small.elasticsearch"
}

variable "aws_elasticsearch_version" {
  default = "6.2"
}

# redis

variable "aws_redis_version" {
  default = "2.8.24"
}

variable "aws_redis_node_type" {
  default = "cache.t2.micro"
}