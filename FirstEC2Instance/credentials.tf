provider "aws" {
  shared_credentials_file = "${var.credentials_file}"
  profile = "${var.credentials_profile}"
  region = "${var.aws_region}"
}
