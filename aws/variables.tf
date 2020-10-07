variable access_key {}

variable secret_key {}

variable region {}

variable name {
  default = "jenkins-server"
}

variable "ami_name" {
  default = "amzn2-ami-hvm-2.0.20200904.0-x86_64-gp2"
}

variable "ami_owner_id" {
  default = "137112412989"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "vpc_cidr" {
  default = "172.31.0.0/20"
}

variable "existing_vpc_id" {
  default = ""
}

variable "existing_subnet_ids" {
  type = list(string)
  default = []
}

variable key_pair_name {
  default = "csgo-server-key-pair"
}

variable public_key {}

variable "egress_cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "jenkins_port" {
  default = 8081
}
