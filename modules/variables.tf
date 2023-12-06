
variable "sns_topic_name" {
  type        = string
  default     = ""
  description = "The name of the SNS topic to receive ECS task failure alerts"
}

variable "ecs_cluster_name" {
  type        = string
  default     = ""
  description = "The name of the ECS cluster to monitor"
}

variable "services" {
  type = list(object({
    service_name = string
  }))
  default = []
  description = "List of ECS services to monitor for task failures"
}
