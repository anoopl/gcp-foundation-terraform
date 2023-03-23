module "folders" {
  source = "../.."

  parent            = "${var.parent_type}/${var.parent_id}"
  set_roles         = true
  all_folder_admins = var.all_folder_admins

  names = [
    "core",
    "network",
    "ops",
  ]

  per_folder_admins = {
    core = {
      members = [
        "group:core-admins@test.io"
      ],
    },
    network = {
      members = [
        "group:network-admins@test.io",
      ],
    }
    ops = {
      members = [
        "group:ops@test.io",
      ],
    }
  }
}

