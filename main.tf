terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "~> 1.0"
    }
  }
}

provider "spacelift" {}

resource "spacelift_stack" "kaboom" {
  name           = "kaboom"
  branch         = "master"
  repository     = "demo"
  worker_pool_id = "01EGJJ0HNKQW51GSJY2F8Q077Z"
}
