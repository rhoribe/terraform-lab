data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "public_ec2_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "private_ec2_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}


data "aws_iam_policy_document" "puclic_ec2_policy_document" {
  statement {
    effect = "Allow"
    actions = [
      "s3:*"
    ]
    resources = ["${module.s3[0].arn}"]
  }
}


data "aws_iam_policy_document" "private_ec2_policy_document" {
  statement {
    effect = "Allow"
    actions = [
      "s3:*"
    ]
    resources = ["${module.s3[0].arn}"]
  }
}