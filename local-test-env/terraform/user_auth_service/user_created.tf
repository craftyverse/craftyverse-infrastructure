resource "aws_sns_topic" "user_created_topic" {
  name = var.user_created_topic_name
}

resource "aws_sqs_queue" "user_created_queue" {
  name = var.user_created_queue_name
}

