####################
# Common Variables #
####################
company     = "kopicloud"
environment = "core"
description = "Deploy and Configure Azure Firewall"
location    = "northeurope"

##################
# Authentication #
##################
azure-subscription-id = "complete-here"
azure-client-id       = "complete-here"
azure-client-secret   = "complete-here"
azure-tenant-id       = "complete-here"

#############
# Core VNET #
#############
core-vnet-cidr = "10.10.0.0/16"

################
# Core Subnets #
################
core-azure-firewall-subnet-cidr = "10.10.1.0/26" # /26 required 

