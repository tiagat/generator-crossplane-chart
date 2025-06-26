# variables.tf

variable "dummy" {
  type        = string
  description = "Dummy variable for testing purposes"
}

variable "account" {
  type = object({
    region = string
    owners = list(string)
  })
  description = "Dummy variable for testing purposes"
}
