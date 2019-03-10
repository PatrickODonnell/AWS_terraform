variable "bucket_name"{
  description = "The name of the bucket. If omitted, Terraform will assign a random, unique name."
  default     = ""
}

variable "acl"{
  description = "The canned ACL to apply. Defaults to 'private'"
  default     = ""
}
