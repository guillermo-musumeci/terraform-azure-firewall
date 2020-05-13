#############################
## Application - Variables ##
#############################

# company name 
variable "company" {
  type        = string
  description = "This variable defines the company name used to build resources"
}

# azure region
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
  default     = "north europe"
}

# description
variable "description" {
  type        = string
  description = "Provide a description of the resource"
}

# application or company environment
variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
}