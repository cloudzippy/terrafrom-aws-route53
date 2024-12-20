variable "create_private_zone" {
  description = "Toggle to create a private hosted zone. If false, creates a public zone."
  type        = bool
  default     = false
}

variable "domain_name" {
  description = "The domain name for the hosted zone"
  type        = string
}


variable "tags" {
  description = "Tags to apply to the hosted zone"
  type        = map(string)
  default     = {}
}
