# VPC Variables
variable "vpc_cidr" {
  value = "18.0.0.0/16"
}
variable "instance_tenancy" {
 value = "default" 
}
variable "enable_dns_hostnames" {
  value = "true"
}
variable "enable_dns_support" {
  value = "true"
}
variable "enable_classiclink" {
  valur = "false"
}

# subnet variables
variable "aws_subnet_cidr" {
  value = "18.0.1.0/24"
}
variable "availability_zone" {
  value = "us-east-1"
}