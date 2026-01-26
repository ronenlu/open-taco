terraform {
  required_providers {
    atlas = {
      source  = "ariga/atlas"
      version = "~> 0.10.1"
    }
  }
}

provider "atlas" {
  # The dev database is used by Atlas to normalize schemas and plan migrations.
  # Using docker:// automatically spins up a temporary container.
  dev_url = "docker://postgres/16/dev?search_path=public"
  cloud {
    token = "aci_v4NiGbD02QNVYkaU/kPEK9Nj8C8z9rBY7f3PzJREcXb8X2WDC2JQ/DzqRg665qGWq0oVfSzSOhYt7Inq"
  }
}
