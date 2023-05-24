// Required Variables -------------------------------------
variable "subscription_name" {
  type        = string
  default     = ""
  description = "Subscription Name for deployment"
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "Resource group where source service is created"
}

variable "storage_account_name" {
  description = "INFO: Storage Account Name to use for system topic"
  type        = string
  default     = ""
}

variable "storage_account_resource_group_name" {
  description = "INFO: Storage Account Resource Group to use for system topic"
  type        = string
  default     = ""
}

variable "diagnostics_storage_account_name" {
  description = "INFO: Storage Account Name to use for pushing logs"
  type        = string
  default     = ""
}

variable "diagnostics_storage_account_resource_group_name" {
  description = "INFO: Storage Account Resource Group to use for pushing logs"
  type        = string
  default     = ""
}

variable "location" {
  description = "INFO: This will be Azure Region where resources will be created. TYPE:string. EXAMPLE:southcentralus, eastus, westus"
  type        = string
}

variable "resource_id" {
  description = "INFO: The ID of the resource for which system topic needs to be created"
  type        = string
  default     = ""
}

variable "eventgrid_system_topic_type" {
  description = "INFO: The type of system topic which needs to be created"
  type        = string
  default     = ""
}


variable "eventgrid_system_topic_name" {
  type        = string
  default     = ""
  description = "INFO: (Optional) Event Grid System Topic Name. Keep it blank for the naming logic to pick"
}

variable "event_subscription_name" {
  type        = string
  default     = ""
  description = "INFO: (Optional) Event Subscription Name. Keep it blank for the naming logic to pick"
}


variable "storage_queue_name" {
  type        = string
  default     = ""
  description = "INFO: (Optional) Storage Queue Name. Keep it blank for the naming logic to pick"
}

variable "tags" {
  type        = map
  description = "A map of the tags to use on the resources that are deployed with this module."
  default = {
    applicationname      = "AF-PaaS-Managed-Event_Grid-System-Topics",
    environment          = "nonprod",
    owner                = "Strati-AF-PaaS",
    apm                  = "43926262",
    notificationdistlist = "Strati-AF-PaaS-Dev@email.wal-mart.com",
    trproductid          = "2187"
  }
}