variable access_key {}

variable secret_key {}

variable region {}

variable name {
  default = "keycloak-server"
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

variable "kclk_web_port" {
  default = 8081
}

variable "kclk_ws_port" {
  default = 8082
}

variable "kclk_postgres_db" {
  default = "keycloak"
}

variable "kclk_postgres_user" {
  default = "keycloak"
}

variable "kclk_postgres_pwd" {
  default = "Pa55w0rd"
}

variable "kclk_user" {
  default = "keycloak"
}

variable "kclk_pwd" {
  default = "Pa55w0rd.2008!"
}