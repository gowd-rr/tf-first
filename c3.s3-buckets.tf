resource "random_pet" "pet" {
  length    = var.my_pet
  separator = "-"
}

resource "aws_s3_bucket" "name" {
  bucket = random_pet.pet.id
}