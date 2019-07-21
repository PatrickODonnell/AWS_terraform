variable "name"{
  description = "Name of the Elastic Beanstalk Environment"
  default     = ""
}

variable "application"{
  description = "The Elastic Beanstalk Application specified for this environment"
  default     = ""
}

variable "solution_stack_name"{
  description = "A solution stack to base your environment off of. Example stacks can be found in the Amazon API documentation"
  default     = ""
}
