resource "google_container_cluster" "gke-cluster" {
  name               = "my-first-gke-cluster"
  network            = "default"
  location           = "europe-west1-b"
  initial_node_count = 2
}

resource "google_compute_firewall" "default" {
  name    = "test-node-port"
  network =  "default"

  allow {
    protocol = "tcp"
    ports    = ["30001"]
  }

  source_tags = ["web"]
}
