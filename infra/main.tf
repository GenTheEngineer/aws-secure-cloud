# The main.tf defines the Virtual Private Cloud

# Set my providers region and other options that applies to the provider itself
provider "aws" {
  region = "eu-north-1"
}

# Use data sources to query my cloud provider (AWS) for existing resources
# Data sources help me keep my code dynamic by avoiding hardcoding values that may change over time
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

# A resource block defines components for my infrastructure
resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "secure-cloud"
  }
}
