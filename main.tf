resource "null_resource" "a_single_resource" {}

check "check_url_succeed" {
  data "http" "check_url_succeed" {
    url = "https://terraform.io"
  }

  assert {
    condition = data.http.check_url_succeed.status_code == 200
    error_message = "${data.http.check_url_succeed.url} returned an unhealthy status code"
  }
}

check "check_url_fail" {
  data "http" "check_url_fail" {
    url = "https://terraform_patrick.io"
  }

  assert {
    condition = data.http.check_url_fail.status_code == 200
    error_message = "${data.http.check_url_fail.url} returned an unhealthy status code"
  }
}