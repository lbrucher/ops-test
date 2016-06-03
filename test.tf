
resource "template_file" "codepipeline_bucket" {
  template = "${lower(var.atlas.org)}-${lower(var.atlas.env)}-codepipeline"
}

resource "aws_s3_bucket" "codepipeline" {
  bucket = "${template_file.codepipeline_bucket.rendered}"
  acl = "private"

  # intentionally block Terraform from trying to wipe this bucket
  force_destroy = false

  # versioning needs to be enabled for codepipeline buckets
  versioning {
        enabled = true
    }

  tags {
    Name = "${var.atlas.org}/${var.atlas.env}/codepipeline_bucket"
  }
}
