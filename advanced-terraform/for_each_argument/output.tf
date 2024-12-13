// EC2 instance public IP with Toset
output "public_ip" {
  //value = aws_instance.for-each-argument.*.public_ip  // legacy splat
  //value = aws_instance.for-each-argument[*].public_ip   //latest splat
  value = [for instance in aws_instance.for-each-argument: instance.public_ip]
  //value = toset([for instance in aws_instance.for-each-argument: instance.public_ip])  # OPTINAL
}
// EC2 instance Private IP with MAP
output "private_ip" {
  value = tomap({ for az, instance in aws_instance.for-each-argument: az => instance.private_ip})
}