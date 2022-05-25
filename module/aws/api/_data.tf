data "archive_file" "source" {
  type        = "zip"
  source_dir  = "./src"
  output_path = "./artifact/${var.project_name}-artifact.zip"
}
