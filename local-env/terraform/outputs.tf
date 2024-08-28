output "user_created_sns_topic_arn" {
  description = "The ARN of the user created SNS topic from the user_auth_service module"
  value       = module.user_auth_service.sns_topic_arn
}

output "user_created_sqs_queue_arn" {
  description = "The ARN of the user created SQS queue from the user_auth_service module"
  value       = module.user_auth_service.sqs_queue_arn
}

output "user_created_sqs_queue_url" {
  description = "The URL of the user created SQS queue from the user_auth_service module"
  value       = module.user_auth_service.sqs_queue_url
}
