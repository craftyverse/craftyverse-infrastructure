resource "aws_sns_topic" "user_created_topic" {
  name = var.user_created_topic_name
}

resource "aws_sqs_queue" "user_created_queue" {
  name = var.user_created_queue_name
}

resource "aws_sns_topic_subscription" "user_created_queue_subscription" {
  topic_arn = aws_sns_topic.user_created_topic.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.user_created_queue.arn
}


