resource "aws_vpc" "vpc" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_hostnames = true
  tags = { Name = "mc-iam-vpc" }
}
resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.10.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = { Name = "mc-iam-subnet" }
}
resource "aws_internet_gateway" "igw" { vpc_id = aws_vpc.vpc.id }
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.vpc.id
  route { cidr_block = "0.0.0.0/0" gateway_id = aws_internet_gateway.igw.id }
}
resource "aws_route_table_association" "rta" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.rt.id
}
resource "aws_security_group" "sg" {
  name   = "mc-iam-sg"
  vpc_id = aws_vpc.vpc.id
  ingress { from_port = 22 to_port = 22 protocol = "tcp" cidr_blocks = ["0.0.0.0/0"] }
  egress  { from_port = 0  to_port = 0  protocol = "-1" cidr_blocks = ["0.0.0.0/0"] }
}
data "aws_iam_policy_document" "ec2_assume" {
  statement {
    effect = "Allow"
    principals { type = "Service", identifiers = ["ec2.amazonaws.com"] }
    actions = ["sts:AssumeRole"]
  }
}
resource "aws_iam_role" "ec2_role" {
  name               = "mc-iam-ec2-role"
  assume_role_policy = data.aws_iam_policy_document.ec2_assume.json
}
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "mc-iam-ec2-profile"
  role = aws_iam_role.ec2_role.name
}
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter { name = "name" values = ["ubuntu/images/hvm-ssd/ubuntu-noble-24.04-amd64-server-*"] }
}
resource "aws_instance" "ec2" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.subnet.id
  vpc_security_group_ids      = [aws_security_group.sg.id]
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name
  associate_public_ip_address = true
  tags = { Name = "mc-iam-ec2" }
}
resource "aws_ecr_repository" "repo" {
  name = "mc-iam-app"
  image_scanning_configuration { scan_on_push = true }
  encryption_configuration { encryption_type = "AES256" }
}
