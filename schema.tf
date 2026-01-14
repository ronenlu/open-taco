# Data source to read the schema from SQL file
# Atlas converts SQL to its internal HCL representation
data "atlas_schema" "app" {
  src = "atlas://open-taco"
  dev_url = "docker://postgres/16/dev?search_path=public"
}

# Resource to apply the schema to the target database
# Atlas calculates the diff and applies necessary changes
resource "atlas_schema" "app" {
  url = var.database_url
  hcl = data.atlas_schema.app.hcl
}