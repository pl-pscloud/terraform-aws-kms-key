output "pscloud_key_id" {
  value = aws_kms_key.pscloud-kms-key.id
}

output "pscloud_key_arn" {
  value = aws_kms_key.pscloud-kms-key.arn
}