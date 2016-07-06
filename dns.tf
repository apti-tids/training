

#


# DO NOT DELETE THESE LINES!


#


# Your DNSimple email is:


#


#     sethvargo+terraform@gmail.com


#


# Your DNSimple token is:


#


#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF


#


# Your Identity is:


#


#     totaljobs-9bf31c7ff062936a96d3c8bd1f8f2ff3


#

variable "dnsimple_token" {
  default = "sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF"
} 
variable "dnsimple_email" {
  default = "sethvargo+terraform@gmail.com"
} 

provider "dnsimple" {
    token = "${var.dnsimple_token}"
    email = "${var.dnsimple_email}"
}

resource "dnsimple_record" "foobar" {
    domain = "terraform.rocks"
    name = "tutorial_apti_terraform"
    value = "${aws_instance.web.0.public_ip}"
    type = "A"
}
