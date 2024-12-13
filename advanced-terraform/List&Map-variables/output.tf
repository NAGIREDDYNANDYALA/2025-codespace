# Implementing outputs with for loops and splat operations


# Output - For loop with list
output "for_output_list" {
  description = "for-loop-with-list"
  value       = [for instance in aws_instance.advanced: instance.public_ip]
}

# Output - For loop with Map
output "for_output_map" {
  description = "for-loop-with-map"
  value       = {for instance in aws_instance.advanced: instance.id => instance.private_ip}
}

# Output - For loop with Map (Advanced)
output "for_output_map2" {
  description = "for-loop-with-map-advanced"
  value       = {for c, instance in aws_instance.advanced: c => instance.public_ip}
}

# Output legacy splat operator - Returns the list
output "legacy_splat_instance_public_ip" {
  description = "legacy splat operator"
  value       = aws_instance.advanced.*.public_ip
}

# Output latest generalized splat operator - Returns the list
output "latest_splat_instance_public_ip" {
  description = "Generalized latest splat operator"
  value       = aws_instance.advanced[*].public_ip
}
