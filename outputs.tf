output "policy_id" {
  description = "The ID of the created SCP policy"
  value       = aws_organizations_policy.scp.id
}

output "policy_arn" {
  description = "The ARN of the created SCP policy"
  value       = aws_organizations_policy.scp.arn
}

