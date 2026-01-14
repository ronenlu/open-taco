# Data source to read the current state of migrations
# This inspects both the migrations directory and the target database
data "atlas_migration" "app" {
  # Path to the directory containing migration files
  dir = "file://migrations"
  # Connection URL to the target database
  url = var.database_url
}

# Resource to apply migrations to the target database
resource "atlas_migration" "app" {
  # Reference the migrations directory from the data source
  dir     = data.atlas_migration.app.dir
  # Apply up to the latest migration version
  version = data.atlas_migration.app.latest
  # Target database URL
  url     = data.atlas_migration.app.url
}
