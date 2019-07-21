variable "name"{
  description = "The name of the application, must be unique within your account"
  default     = "example"
}

variable "description"{
  description = "Short description of the application "
  default     = "example"
}

variable "tags"{
  description = "Key-value mapping of tags for the Elastic Beanstalk Application"
  default     = "example"
}

variable "service_role"{
  description = " The ARN of an IAM service role under which the application version is deleted. Elastic Beanstalk must have permission to assume this role."
  default     = "example"
}

variable "max_count"{
  description = "The maximum number of application versions to retain. "
  default     = "example"
}

variable "delete_source_from_s3"{
  description = "Set to true to delete a version's source bundle from S3 when the application version is deleted"
  default     = "example"
}
