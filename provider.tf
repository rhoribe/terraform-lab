terraform {
  backend "remote" {
    organization = "rh-aws-lab"
    workspaces {
      name = "terraform-lab"
    }
  }
}

