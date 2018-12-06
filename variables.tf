# Notifiers
variable "primary_notifier" {
  default = "@pagerduty"
}

# Metric Thresholds
variable "free_ram_percentage_critical" {
  default = 0.3
}

variable "free_ram_percentage_critical_recovery" {
  default = 0.5
}

variable "load_avg_critical" {
  default = 1
}

variable "load_avg_critical_recovery" {
  default = 0.5
}
