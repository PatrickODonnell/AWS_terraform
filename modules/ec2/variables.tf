variable "ami"{
  description = "The AMI to use for the instance"
  default = "ami-2757f631"
}

variable "instance_type"{
  description = "The type of instance to start. Updates to this field will trigger a stop/start of the EC2 instance"
  default = "t2.micro"
}
