output "sns_topic_arn" {
  description = "The ARN of the user created SNS topic"
  value       = aws_sns_topic.user_created_topic.arn
}

# Output the ARN of the SQS Queue
output "sqs_queue_arn" {
  description = "The ARN of the user created SQS queue"
  value       = aws_sqs_queue.user_created_queue.arn
}

# Output the URL of the SQS Queue
output "sqs_queue_url" {
  description = "The URL of the user created SQS queue"
  value       = aws_sqs_queue.user_created_queue.id
}

# Output the Subscription ARN (this may not be necessary in many cases)
output "sns_subscription_arn" {
  description = "The ARN of the SNS subscription for the SQS queue"
  value       = aws_sns_topic_subscription.user_created_queue_subscription.arn
}
