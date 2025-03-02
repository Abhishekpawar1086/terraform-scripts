resource "google_compute_instance_template" "instance-template" {
  name        = "my-instance-template"
  description = "This template is used to create app server instances."

  tags = ["foo", "bar"]

  instance_description = "description assigned to instances"
  machine_type         = "e2-micro"
  can_ip_forward       = false

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
  }

  // Create a new boot disk from an image
  disk {
    source_image      = "debian-cloud/debian-11"
    auto_delete       = true
    boot              = true
    // backup the disk every day
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "jenkins@devops-practice-451710.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}
