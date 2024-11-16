variable "my_region" {
  description = "This is region"
  type        = string
  default     = "us-east-1"
}

# variable "my_ami" {
#   description = "This is instance ami"
#   type        = string
#   # default     = "ami-063d43db0594b521b"
#   validation {
#     condition = length(var.my_ami) >= 4 && substr(var.my_ami,0, 4) == "ami-"
#     error_message = "This is not vaied ami id"
#   }
# }

variable "my_zone" {
  description = "This is instance zone"
  type        = string
  default     = "us-east-1a"
}

# variable "my_inst_type" {
#   default     = "t2.micro"
#   description = "This is for instace type"
#   type        = string
# }

variable "my_count" {
  description = "this is count of instance"
  default     = 1
  type        = number
}

# variable "my_key" {
#   description = "this is instance key"
#   type        = string
#   default     = "test-aws"
# }

variable "my_pet" {
  description = "This is pet leagght"
  type        = number
  default     = 4
}


variable "my_inst_type" {
  default     = ["t2.micro", "t2.nano"]
  description = "This is for instace type"
  type        = list(string)
}

variable "my_key" {
  description = "this is instance key"
  type        = map(string)
  default = {
    first  = "test-aws"
    second = "test-aws2"
  }
}