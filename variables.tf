
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "sec_name" {
  type    = string
  default = "test2"
}

variable "sec_desc" {
  type    = string
  default = "sg made using terraform"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0090174c8d23ba32f"
}

variable "create_before_destroy" {
  type    = bool
  default = true
}

variable "ami" {
  type    = string
  default = "ami-08c40ec9ead489470"
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
  default = "test2"
}

variable "access_key" {
  type    = string
  default = "Access Key ID"
}

variable "secret_key" {
  type    = string
  default = "Secret Access Key"
}
