resource "google_compute_instance" "aa_instance" {
  name         = "aa-vm-${var.environment}"
  machine_type = "f1-micro"
  zone         = var.project_zone

  tags = ["aa", "sandbox"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-focal-v20201211"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo Hello word!! > ~/test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}