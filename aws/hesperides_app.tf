resource "aws_elastic_beanstalk_application" "hesperides-app" {
  name = "hesperides-app"
  description = "hesperides-app"
}

resource "aws_elastic_beanstalk_environment" "hesperides-app-dev-env" {
  name = "hesperides-app-dev"
  application = "${aws_elastic_beanstalk_application.hesperides-app.name}"
  solution_stack_name = "${var.aws_beanstalk_docker_stackname}"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "InstanceType"
    value = "t2.micro"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "IamInstanceProfile"
    value = "aws-elasticbeanstalk-ec2-role"
  }

  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "SPRING_PROFILES_ACTIVE"
    value     = "local,noldap"
  }
}
