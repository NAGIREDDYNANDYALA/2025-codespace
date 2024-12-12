# Defing list-variables
variable "security_groups" {
  type = "list"
  default = ["scg-id", "scg-id", "scg-id"]
}
#Accessing list variables
security_groups = "${var.security_groups}"

# Map variables
variable "region" {
  default = "us-east-1"
}
variable "AMIS" {
  type = map
  default = {
    us-east-1 = "ami-06ae0e97bcb59038c"
    us-east-2 =  "ami-05803413c51f242b7"
    us-west-1 =  "ami-04a119c5b7ed4e7ad"
    us-west-2 =  "ami-0688ba7eeeeefe3cd"
    ap-south-1 = "ami-0d3611c6f2adcd778"
  }
}
# Accessing the map variables
ami = lookup(var.AMIS, var.region )