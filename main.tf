module "pubsub" {
  source  = "git::https://github.com/Basav-GCP/gbdi-dbai-pubsub.git?ref=0.1"
  version = "~> 1.8"
  topic      = "postgres-log-sink"
  project_id = "vaulted-keel-333115"
  kms_key_name = "key"
  pull_subscriptions = [
    {
      name                    = "pull"                                               // required
      ack_deadline_seconds    = 20                                                   // optional
      dead_letter_topic       = "projects/my-pubsub-project/topics/example-dl-topic" // optional
      max_delivery_attempts   = 5                                                    // optional
      service_account         = "msscloud-sa@vaulted-keel-333115.iam.gserviceaccount.com" // required          // optional
    }
  ]
}