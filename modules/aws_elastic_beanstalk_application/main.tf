resource "aws_elastic_beanstalk_application" "aws_elastic_beanstalk_application" {
  name        = "${var.name}"
  description = "${var.description}"
  tag         = "${var.tags}"
  appversion_lifecycle {
    service_role          = "${var.service_role}"
    max_count             = "${var.max_count}"
    delete_source_from_s3 = true
  }
}
