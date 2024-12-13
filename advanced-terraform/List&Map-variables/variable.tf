variable "region" {
  type = string
  default = "us-east-1"
}
# instance type list variables
variable "instance_type_list" {
  description = "EC2 instance type"
  type = list(string)
  default = [ "t2.micro", "t2.small", "t3.micro" ]
}

# Accessing list variables
#var.instance_type_list[1] # 1 is t2.small type
#----------------------------------------------------------------
# instance type map
variable "instance_type_map" {
  description = "ec2 instance type"
  type = map(string)
  default = {
    "Dev" = "t3.micro"
    "Test" = "t3.small"
    "Prod" = "t3.large"
  }
}

# accessing map variables
#var.instance_type_map["Test"]
#----------------------------------------------------------------