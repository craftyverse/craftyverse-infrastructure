resource "aws_sns_topic" "merchant_created_topic" {
  name = var.merchant_created_topic_name
}

resource "aws_sqs_queue" "merchant_created_queue" {
  name = var.merchant_created_queue_name
}
