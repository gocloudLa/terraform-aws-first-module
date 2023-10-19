data "aws_caller_identity" "current" {}

/*----------------------------------------------------------------------*/
/* NetWorking | datasources                                             */
/*----------------------------------------------------------------------*/
data "aws_vpc" "this" {
  filter {
    name   = "tag:Name"
    values = ["${local.common_name}"]
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.this.id]
  }

  tags = {
    Name = "${local.common_name}-private*"
  }
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.this.id]
  }

  tags = {
    Name = "${local.common_name}-public*"
  }
}

data "aws_subnets" "database" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.this.id]
  }

  tags = {
    Name = "${local.common_name}-db*"
  }
}