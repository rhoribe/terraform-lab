
resource "aws_iam_role" "role" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_instance_profile" "instance_profile" {
  name       = var.role_name
  role       = aws_iam_role.role.name
  depends_on = [aws_iam_role.role]
}

resource "aws_iam_role_policy" "role_policy" {
  name   = "${var.role_name}-policy"
  role   = aws_iam_role.role.id
  policy = var.policy_document
}