data "cloudinit_config" "user_data" {
  part {
    filename     = "cloud-config.cfg"
    content_type = "text/cloud-config"
    content      = <<-EOF
      #cloud-config
      apt_update: true
      apt_upgrade: true
      packages:
        - apache2
        - php-mysql
        - libapache2-mod-php
        - php-gd
        - php-curl
    EOF
  }
}

