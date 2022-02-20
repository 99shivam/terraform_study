variable "AWS_REGION" {
  default = "us-east-1"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "AMIS" {
  default = {
    us-east-1 = "ami-13be557e"
  }
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
