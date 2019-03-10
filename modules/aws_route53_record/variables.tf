variable "name"{
  description = "The name of the record"
  default     = "example"
}

variable "records"{
  type = "list"
  description = "A string list of records. Required for non-alias records"
  default = []
}

variable "type"{
  description = "The record type. Valid values are A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, SOA, SPF, SRV and TXT."
  default     = "CNAME"
}

variable "ttl"{
  description = "The TTL of the record. Required for non-alias records"
  default     = "1800"
}

variable "zone_id"{
  description = " The ID of the hosted zone to contain this record"
  default     = ""
}

variable "alias_name"{
  description = "An alias block, DNS domain name for a CloudFront distribution, S3 bucket, ELB, or another resource record set in this hosted zone."
  default = ""
}
