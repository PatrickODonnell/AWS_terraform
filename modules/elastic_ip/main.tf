resource "aws_eip" "ip" {
  instance = "${var.ec2_instance_id}"
}
