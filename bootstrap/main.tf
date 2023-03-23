module "folders" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.0"

  parent  = "organizations/656341037860"

  names = [
    "core",
    "network",
    "ops",
  ]

  #set_roles = true

  per_folder_admins = {
    core = "group:gcp-core-admins@domain.com"
    network = "group:gcp-network-admins@domain.com"
    ops = "group:gcp-ops@domain.com"
  }

  all_folder_admins = [
    "group:gcp-security@domain.com",
  ]
}
