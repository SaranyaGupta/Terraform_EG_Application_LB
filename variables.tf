#Define AWS Region
variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "us-east-2"
}
#Define IAM User Access Key
variable "access_key" {
  description = "The access_key that belongs to the IAM user"
  type        = string
  sensitive   = true
  default     = ""
}
#Define IAM User Secret Key
variable "secret_key" {
  description = "The secret_key that belongs to the IAM user"
  type        = string
  sensitive   = true
  default     = ""
}

variable "subnet_cidr_public" {
  description = "cidr blocks for the public subnets"
  default     = ["10.20.20.0/28", "10.20.20.16/28", "10.20.20.32/28"]
  type        = list(any)
}

variable "availability_zone" {
  description = "availability zones for the public subnets"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
  type        = list(any)
}

variable "instance" {
  description = "EC2 instances to be added as target group"
  default     = ["i-0ea84127363e41a7e"]
  type        = list(any)
}


variable "SUBNET_ID" {
  description = "Subnets of the EC2 Instances"
  default     = ["subnet-08e0979ae4f944994","subnet-0f30253c5144b9cbe"]
  type        = list(any)
}

variable "VPCID" {
  description = "VPC ID"
  default     = "vpc-033eda327b526ea8b"
}

variable "awsprops" {
  type = map(any)
  default = {
    region       = "us-east-2"
    vpc          = "vpc-033eda327b526ea8b"
    ami          = "ami-00744e52917f35c39"
    itype        = "t2.micro"
    subnet       = "subnet-0da6c40068a31c6b8"
    publicip     = true
    keyname      = "myseckey"
    secgroupname = "IAC-Sec-Group"
  }
}
