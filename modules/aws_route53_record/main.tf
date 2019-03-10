resource "aws_route53_record" "awsrecord" {
  zone_id       = "${var.zone_id}"
  name          = "${var.name}"
  type          = "${var.type}"
  records       = ["${var.records}"]
  
  alias {
    name    = "${var.alias_name}"
    zone_id = "${var.zone_id}"
    evaluate_target_health = "true"
  }
}
