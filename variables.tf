
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "sec_name" {
  type    = string
  default = "test-sg"
}

variable "sec_desc" {
  type    = string
  default = "sg made using terraform"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0d86b4ff994ca02b6"
}

variable "create_before_destroy" {
  type    = bool
  default = true
}

variable "ami" {
  type    = string
  default = "ami-052efd3df9dad4825"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "terraform"
}

variable "tag_name" {
  type    = string
  default = "test-ec2"
}


