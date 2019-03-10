module "ec2_instance" {
  source        = "modules/ec2"
  ami           = "${var.ec2["ami"]}"
  instance_type = "${var.ec2["instance_type"]}"
}

module "elastic_ip"{
  source          = "modules/elastic_ip"
  ec2_instance_id = "${module.ec2_instance.ec2_instance_id}"
}

module "s3_bucket"{
  source          = "modules/s3"
  bucket_name     = "s3_bucket_1"
  acl             = "{var.s3["acl"]}"
}

module "route53_zone"{
  source          = "modules/aws_route53_zone"
  name            = "{var.route53["zone"]}"
}

module "ns_route53_record"{
  source          = "modules/aws_route53_record"
  zone_id         = "${module.route53_zone.route53_zone_id}"
  name            = ""
  type            = "NS"
  ttl             = "172800"
  records         = ["ns-799.awsdns-35.net.",
                     "ns-295.awsdns-36.com.",
                     "ns-1524.awsdns-62.org.",
                     "ns-1555.awsdns-02.co.uk."]
}

module "soa_route53_record"{
  source          = "modules/aws_route53_record"
  zone_id         = "${module.route53_zone.route53_zone_id}"
  name            = ""
  type            = "SOA"
  ttl             = "900"
  records         = ["ns-799.awsdns-35.net",
                     "awsdns-hostmaster.amazon.com",
                     "1",
                     "7200",
                     "900",
                     "1209600",
                     "86400"]
}

module "a_route53_record"{
  source          = "modules/aws_route53_alias_record"
  zone_id         = "${module.route53_zone.route53_zone_id}"
  name            = "www.example.com"
  type            = "A"
  records         = ["a_route53_record.com.s3-website-eu-west-1.amazonaws.com"]
  alias_name      = "example"
}
