variable "user_created_topic_name" {
  description = "The name of the SNS topic for user created events"
  type        = string
}

variable "user_created_queue_name" {
  description = "The name of the SQS queue for user created events"
  type        = string
}
