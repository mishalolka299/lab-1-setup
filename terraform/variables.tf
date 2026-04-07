variable "vercel_api_token" {
  description = "Vercel API Token for Authentication"
  type = string
  sensitive   = true
}

variable "student_id" {
  description = "Student ID for custom domain prefix"
  type = string
}