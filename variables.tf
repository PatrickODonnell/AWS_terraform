variable "ec2" {
  type            = "map"
  default         = {
    ami           = "ami-047bb4163c506cd98"
    instance_type = "t2.micro"
  }
}

variable "access_key"{
  description     = ""
  default         = ""
}

variable "secret_key"{
  description     = ""
  default         = ""
}

variable "s3"{
  type            = "map"
  default         = {
    bucket_name   = ""
    acl           = ""
  }
}

variable "record"{
  type            = "map"
  default         = {
    zone_id       = ""
    name          = ""
    type          = ""
    ttl           = ""
    records       = ""
 }
}
