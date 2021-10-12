# TODO: Define the variable for aws_region
variable "aws_region" {
  type        = string
  description = "The AWS region"
  default     = "us-east-1"
}

variable "lambda_function_name" {
  type        = string
  description = "The name of the lambda function."
  default     = "udacity-lambda"
}