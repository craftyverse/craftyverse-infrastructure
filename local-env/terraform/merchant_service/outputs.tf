output "merchant_created_sns_topic_arn" {
  description = "The ARN of the merchant created SNS topic"
  value       = aws_sns_topic.merchant_created_topic.arn
}

output "merchant_created_sqs_queue_arn" {
  description = "The ARN of the merchant created SQS queue"
  value       = aws_sqs_queue.merchant_created_queue.arn
}

output "merchant_created_sqs_queue_url" {
  description = "The URL of the merchant created SQS queuec"
  value       = aws_sqs_queue.merchant_created_queue.id
}
