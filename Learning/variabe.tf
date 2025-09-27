#############################
# String variable
#############################
variable "example_string" {
  type    = string
  default = "hello-world"
}

#############################
# Number variable
#############################
variable "example_number" {
  type    = number
  default = 42
}

#############################
# Boolean variable
#############################
variable "example_bool" {
  type    = bool
  default = true
}

#############################
# List of strings
#############################
variable "example_list" {
  type    = list(string)
  default = ["mumbai", "chennai", "delhi"]
}

#############################
# Map of strings
#############################
variable "example_map" {
  type = map(string)
  default = {
    region1 = "mumbai"
    region2 = "chennai"
  }
}

#############################
# Tuple (mixed types, fixed order)
#############################
variable "example_tuple" {
  type    = tuple([string, number, bool])
  default = ["app1", 3, true]
}

#############################
# Object (named attributes with specific types)
#############################
variable "example_object" {
  type = object({
    name   = string
    cpu    = number
    active = bool
  })
  default = {
    name   = "web-server"
    cpu    = 4
    active = true
  }
}

#############################
# Set (unique values, unordered list)
#############################
variable "example_set" {
  type    = set(string)
  default = ["mumbai", "chennai", "mumbai"] # duplicate "mumbai" will be collapsed
}
variable "custom_map" {
  type = map(any)
  default = {
    name = "kannan"
    age  = 20
  }
}

variable "custom_objest" {
  type = object({
    name     = string
    age      = number
    verified = bool
  })
}