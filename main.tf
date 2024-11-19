resource "aws_route53_zone" "hosted_zone" {
  name = var.domain_name

  vpc {
    vpc_id = var.vpc_id
  }
  count = var.create_private_zone ? 1 : 0

  tags = var.tags
}

resource "aws_route53_zone" "public_zone" {
  name = var.domain_name

  count = var.create_private_zone ? 0 : 1

  tags = var.tags
}
