variable "database_url" {
  description = "The connection URL to the target database"
  type        = string
  sensitive   = true  # Marks this as sensitive to hide in logs
}

variable "atlas_token" {
  description = "Atlas token for authentication"
  type        = string
  sensitive   = true
}