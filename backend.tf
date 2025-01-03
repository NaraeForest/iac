terraform {
  backend "s3" {
    bucket = "narae-tfstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-2"
  }
}
