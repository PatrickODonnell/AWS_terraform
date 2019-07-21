resource "aws_elastic_beanstalk_environment" "aws_elastic_beanstalk_enironment" {
  name                = "${var.name}"
  application         = "${var.application}"
  solution_stack_name = "${var.solution_stack_name}"

