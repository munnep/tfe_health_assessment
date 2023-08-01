resource "null_resource" "a_single_resource" {}

check "check_url_succeed" {
  data "http" "terraform_io" {
    url = "https://terraform.io"
  }

  assert {
    condition = data.http.terraform_io.status_code == 200
    error_message = "${data.http.terraform_io.url} returned an unhealthy status code"
  }
}

check "check_url_fail" {
  data "http" "terraform_io" {
    url = "https://terraform_patrick.io"
  }

  assert {
    condition = data.http.terraform_io.status_code == 200
    error_message = "${data.http.terraform_io.url} returned an unhealthy status code"
  }
}