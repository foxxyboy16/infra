variable project {
  description = "Project ID"
}


variable region {

  description = "Region"
  default = "europe-west1"

}


variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {

description = "Disk image"

}

variable private_key_path {
  description = "Path to the private key"
 
}




variable app_disk_image {

description = "Disk image for reddit app"
default = "app-1612613543"

}



variable db_disk_image {

description = "Disk image for reddit db"
default = "db-1612613704"

}
