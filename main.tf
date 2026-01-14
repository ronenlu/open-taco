terraform {
  required_providers {
    atlas = {
      source  = "ariga/atlas"
      version = "~> 0.9.7"
    }
  }
}

provider "atlas" {
  # The dev database is used by Atlas to normalize schemas and plan migrations.
  # Using docker:// automatically spins up a temporary container.
  dev_url = "docker://postgres/16/dev?search_path=public"
}
