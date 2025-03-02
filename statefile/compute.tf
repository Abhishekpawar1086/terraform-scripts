 resource "google_compute_instance" "my-instance" {
  count        = 2
  name         = "my-instance-${count.index}"
  machine_type = var.machinetype
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-with-logging.self_link  # Use the self-link
 }


  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = var.service
    scopes = ["cloud-platform"]
  }
}


