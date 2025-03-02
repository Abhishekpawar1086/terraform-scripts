
resource "google_compute_firewall" "rules" {
  project     = var.project
  name        = "my-firewall-rule"
  network     = google_compute_network.vpc_network.self_link
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol  = "tcp"
    ports     = ["80", "8080", "1000-2000"]
  }

  source_tags = ["foo"]
  target_tags = ["web"]
}

