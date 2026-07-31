locals {
  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}

resource "random_id" "suffix" {
  byte_length = 2
}

resource "null_resource" "fake_deployment" {
  triggers = {
    project_name = var.project_name
    environment  = var.environment
    region       = var.region
    suffix       = random_id.suffix.hex
  }

  provisioner "local-exec" {
    command = "echo 'fake deployment for ${var.project_name} in ${var.environment} (${var.region})'"
  }
}
