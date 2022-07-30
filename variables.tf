variable "instance_type" {
  description = "AWS Instance Type"
  type = string
}

variable "tags" {
  description = "Instance attached tags"
  type = object({
      Name = string
  })
  default = {
      Name = "Terrafrom Provision Module"
  }
}

variable "region_name" {
    description = "AWS region to launch an instance"
    type = string
}