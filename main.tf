terraform {
  required_version = ">=0.12.0"
}
module "pubsub" {
  source  = "git::https://github.com/Basav-GCP/gbdi.git?ref=0.3.8"
  topic      = "postgres-log-sink"
  project_id = "vaulted-keel-333115"
  service_account = "msscloud-sa@vaulted-keel-333115.iam.gserviceaccount.com"
  env = var.env
  region=var.region
  pull_subscriptions = [
    {
      name                    = "postgres-pull"                                      // required
      ack_deadline_seconds    = 20                                                   // optional
      dead_letter_topic       = "projects/my-pubsub-project/topics/example-dl-topic" // optional
      max_delivery_attempts   = 5                                                    // optional
     }
  ]
}
