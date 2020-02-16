resource "aws_kms_key" "pscloud-kms-key" {
  tags = {
    Name          = "${var.pscloud_company}_kms_key_${var.pscloud_env}"
    Project       = var.pscloud_project
  }
}

resource "aws_kms_alias" "pscloud-kms-key-alias" {
  name            = "alias/${var.pscloud_company}_kms_key_${var.pscloud_env}"
  target_key_id   = aws_kms_key.pscloud-kms-key.id
}