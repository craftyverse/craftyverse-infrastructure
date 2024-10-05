output "user_created_sns_topic_arn" {
  description = "The ARN of the user created SNS topic"
  value       = aws_sns_topic.user_created_topic.arn
}

# Output the ARN of the SQS Queue
output "user_created_sqs_queue_arn" {
  description = "The ARN of the user created SQS queue"
  value       = aws_sqs_queue.user_created_queue.arn
}

# Output the URL of the SQS Queue
output "user_created_sqs_queue_url" {
  description = "The URL of the user created SQS queue"
  value       = aws_sqs_queue.user_created_queue.id
}
