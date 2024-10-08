provider "aws" {

  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"


  # only required for non virtual hosted-style endpoint use case.
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs#s3_use_path_style
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    s3  = "http://s3.localhost.localstack.cloud:5566"
    sns = "http://localhost:5566"
    sqs = "http://localhost:5566"
  }
}

module "user_auth_service" {
  source = "./user_auth_service"

  user_created_topic_name = var.user_created_topic_name
  user_created_queue_name = var.user_created_queue_name
}

module "merchant_service" {
  source = "./merchant_service"

  merchant_created_topic_name = var.merchant_created_topic_name
  merchant_created_queue_name = var.merchant_created_queue_name
}
