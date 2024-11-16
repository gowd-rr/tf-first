resource "aws_iam_user" "my_iam" {
  for_each = {
    "test"  = "one"
    "app"   = "game"
    "store" = "online"
    "jo"    = "paths-orts"
    "ami"   = "newss"
  }
  name = "${each.key}-${each.value}-${terraform.workspace}"
  tags = {
    Name = "user-name"
    env  = "${each.key}-${terraform.workspace}"
  }
  lifecycle {
    create_before_destroy = true
    # prevent_destroy = true
    ignore_changes = [tags]
  }
}

resource "aws_iam_user" "my_iam2" {
  for_each = toset(["one", "two", "three", "four", "five"])
  name     = "${each.key}-${terraform.workspace}"
  tags = {
    Name = "user-name"
    env  = "${each.key}-${terraform.workspace}"
  }
}
