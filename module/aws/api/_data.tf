data "archive_file" "source" {
  type        = "zip"
  source_dir  = "./src"
  output_path = ".terraform/artifact/${var.project_name}.zip"
}
