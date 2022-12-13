provider "aws" {
  region = "us-east-1"
  shared_config_files      = ["/c/Users/Miguel/.aws/config"]
  shared_credentials_files = ["/c/Users/Miguel/.aws/credentials"]
  # profile = "mik"
 }

provider "aws" { # required to avoid typing a region terraform-provider-aws issues/1043
  alias   = "use1"
  region  = "us-east-1"
}
