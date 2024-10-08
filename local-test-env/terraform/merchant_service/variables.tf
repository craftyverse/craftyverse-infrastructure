variable "merchant_created_topic_name" {
  description = "The name of the SNS topic for merchant created events"
  type        = string
}

variable "merchant_created_queue_name" {
  description = "The name of the SQS queue for merchant created events"
  type        = string
}
