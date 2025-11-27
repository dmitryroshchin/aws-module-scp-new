terraform {
  source = "."
}

inputs = {
  policy_name        = "example-scp"
  policy_description = "Example SCP policy"
  policy_content     = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Deny"
        Action   = ["*"]
        Resource = ["*"]
        Condition = {
          StringNotEquals = {
            "aws:RequestedRegion" = ["us-east-1", "us-west-2"]
          }
        }
      }
    ]
  })
  target_id = "ou-xxxx-xxxxxxxx"  # Replace with your OU or Account ID
}

