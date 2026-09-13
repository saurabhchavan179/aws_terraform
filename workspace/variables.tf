variable "ami_id" {
  type = string

}

variable "subnet_id" {
  type = string

  description = "This is for the sub_id"
}

variable "instance_type" {
  type = string

  description = "This for the ins_type"

}

variable "instance_count" {
  type        = number
  default     = 1
  description = "This for the ins_count"

}

variable "public_ip" {
  type        = bool
  default     = true
  description = "This is for the public ip"

}

variable "tags" {
  type = string
}