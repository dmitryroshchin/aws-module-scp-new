variable "policy_name" {
  description = "Name of the SCP policy"
  type        = string
}

variable "policy_description" {
  description = "Description of the SCP policy"
  type        = string
  default     = ""
}

variable "policy_content" {
  description = "JSON policy document for the SCP"
  type        = string
}

variable "target_id" {
  description = "The ID of the target (AWS Account ID, OU ID, or Root ID) to attach the policy to"
  type        = string
}

