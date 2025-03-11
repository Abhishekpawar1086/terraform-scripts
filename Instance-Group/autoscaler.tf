resource "google_compute_autoscaler" "appserver" {
  name   = "appserver-autoscaler"
  zone   = "us-central1-a"
  target = google_compute_instance_group_manager.appserver.self_link

  autoscaling_policy {
    max_replicas    = 5
    min_replicas    = 3
    cooldown_period = 60

    cpu_utilization {
      target = 0.8 # Scale up if CPU usage exceeds 80%
    }
  }
}
