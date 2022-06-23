variable "s3_bucket_name" {
  type = string
  description = "S3 bucket name to store test results"
}
variable "zone_id" {
  type        = string
  description = "The route53 zone id"
}
variable "url" {
  type= string
  description = "The URL to deploy SorryCypress to"
}
variable "load_balancer" {
  type = object({
    dns_name = string
    zone_id  = string
  })
  description = "The load balancer resource"
}
variable "load_balancer_security_group" {
  type = object({
    id = string
  })
  description = "The load balancer security group"
}
variable "load_balancer_listener" {
  type = object({
    arn = string
  })
  description = "The load balancer HTTPS listener"
}
variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}
variable "task_role_arn" {
  type        = string
  description = "ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services"
}
variable "execution_role_arn" {
  type        = string
  description = "ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume"
}
variable "cpu_request" {
  type        = string
  description = "Number of cpu units used by the task"
  default     = "1024"
}
variable "memory_request" {
  type        = string
  description = "Amount (in MiB) of memory used by the task"
  default     = "2048"
}
variable "subnets" {
  type = list(string)
  description = "AWS subnet IDs to deploy Sorry Cypress"
}
