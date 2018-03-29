variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_region" {
  default = "eu-west-3"
}

# https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html#concepts.platforms.docker
variable "aws_beanstalk_docker_stackname" {
  default = "64bit Amazon Linux 2017.09 v2.9.1 running Docker 17.12.0-ce"
}
