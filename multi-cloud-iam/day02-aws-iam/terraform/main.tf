resource "aws_iam_role" "readonly_role" {
  name               = "mc-iam-readonly"
  assume_role_policy = data.aws_iam_policy_document.assume_root.json
}
data "aws_iam_policy_document" "assume_root" {
  statement {
    effect = "Allow"
    principals { type = "AWS", identifiers = ["*"] }
    actions = ["sts:AssumeRole"]
  }
}
resource "aws_iam_policy" "readonly_policy" {
  name   = "mc-iam-readonly-policy"
  policy = data.aws_iam_policy_document.readonly.json
}
data "aws_iam_policy_document" "readonly" {
  statement {
    effect = "Allow"
    actions = ["ec2:Describe*","iam:List*","s3:ListAllMyBuckets","logs:Describe*","cloudwatch:List*"]
    resources = ["*"]
  }
}
resource "aws_iam_role_policy_attachment" "attach_readonly" {
  role       = aws_iam_role.readonly_role.name
  policy_arn = aws_iam_policy.readonly_policy.arn
}
