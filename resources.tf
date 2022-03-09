resource "aws_iam_user" "my_iam_user" {
  name = "${terraform.workspace}_iam_user"
}