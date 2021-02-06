This is an infrastructure repository




gcloud compute instances create someinstance --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --zone=europe-west1-b  --metadata-from-file startup-script=Downloads/infra/config-scripts/startup_script.sh
