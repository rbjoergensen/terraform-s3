variable "bucket_name" {
  type = string
}

variable "bucket_acl" {
  type = string
  default = "private"
}

variable "bucket_versioning" {
  type = string
  default = "Disabled"
}

variable "block_public_acls" {
  type = bool
  default = true
}

variable "block_public_policy" {
  type = bool
  default = true
}

variable "restrict_public_buckets" {
  type = bool
  default = true
}

variable "ignore_public_acls" {
  type = bool
  default = true
}