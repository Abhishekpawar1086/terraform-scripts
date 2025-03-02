resource "google_compute_instance" "my-instance" {
  name         = "my-instance"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
 network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
 // service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
  //  email  = var.service-account
  //  scopes = ["cloud-platform"]
 // }
}
