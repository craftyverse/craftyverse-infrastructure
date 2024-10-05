output "user_created_sns_topic_arn" {
  description = "The ARN of the user created SNS topic from the user_auth_service module"
  value       = module.user_auth_service.user_created_sns_topic_arn
}

output "user_created_sqs_queue_arn" {
  description = "The ARN of the user created SQS queue from the user_auth_service module"
  value       = module.user_auth_service.user_created_sqs_queue_arn
}

output "merchant_created_sns_topic_arn" {
  description = "The ARN of the merchant created SNS topic from the merchant_service module"
  value       = module.merchant_service.merchant_created_sns_topic_arn
}

output "merchant_created_sqs_queue_arn" {
  description = "The ARN of the merchant created SQS queue from the merchant_service module"
  value       = module.merchant_service.merchant_created_sqs_queue_arn
}

output "user_created_sqs_queue_url" {
  description = "The URL of the user created SQS queue from the user_auth_service module"
  value       = module.merchant_service.merchant_created_sqs_queue_url
}

output "merchant_created_sqs_queue_url" {
  description = "The URL of the merchant created SQS queue from the merchant_service module"
  value       = module.merchant_service.merchant_created_sqs_queue_url
}
