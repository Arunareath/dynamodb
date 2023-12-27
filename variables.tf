variable "ami-type" {
    default = "ami-016574d6a5734981e"
}

variable "instace-type" {
    default = "t2.micro"
}

variable "instance-count" {
    type = number
    default = 2
}