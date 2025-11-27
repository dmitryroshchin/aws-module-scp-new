resource "aws_organizations_policy" "scp" {
  name        = var.policy_name
  description = var.policy_description
  type        = "SERVICE_CONTROL_POLICY"
  content     = var.policy_content
}

resource "aws_organizations_policy_attachment" "attachment" {
  policy_id = aws_organizations_policy.scp.id
  target_id = var.target_id
}

