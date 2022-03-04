resource "aws_kms_key" "pscloud-kms-key" {

  enable_key_rotation  = var.pscloud_enable_key_rotation
  multi_region         = var.pscloud_multi_region

  policy               = var.pscloud_policy

  tags = {
    Name          = "${var.pscloud_company}_kms_key_${var.pscloud_env}"
    Project       = var.pscloud_project
  }
}

resource "aws_kms_alias" "pscloud-kms-key-alias" {
  name            = "alias/${var.pscloud_company}_kms_key_${var.pscloud_env}_${var.pscloud_project}"
  target_key_id   = aws_kms_key.pscloud-kms-key.id
}