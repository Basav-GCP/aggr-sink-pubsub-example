variable "env" {
  type        = string
  description = "The project ID to manage the Pub/Sub resources"
  default = "dev"
}
variable "region" {
  type        = string
  description = "The region for the Pub/Sub resources"
  default = "europe-west2"
}
