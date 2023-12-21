variable "region" {
  type    = string
  default = "ca-central-1"
}

variable "ami" {
  type    = string
  default = "ami-05ed7c410d6798451"
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "keypair" {
  type    = string
  default = "logkey"
}

variable "Name" {
  type    = string
  default = "serverEc2"
}
