provider "google" {
  credentials = file("./creds/serviceaccount.json")
  project     = "driven-rig-271302"
  region      = "europe-west1"
}
