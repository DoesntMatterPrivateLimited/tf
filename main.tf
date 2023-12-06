module "ecs_task_failure_alert" {
  source  = "./modules/ecs-task-failure-alert"
  sns_topic_name = "ecs_task_failure_sns"
  ecs_cluster_name = "my-ecs-cluster"
  services = [
    {
      service_name = "my-service-1"
    },
    {
      service_name = "my-service-2"
    }
  ]
}
