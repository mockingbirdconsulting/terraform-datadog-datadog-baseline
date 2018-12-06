# Configure the Datadog provider
provider "datadog" {}

# If Free RAM is below 30%, send an alert
resource "datadog_monitor" "check_ram" {
  name    = "Check we have enough free RAM across systems"
  type    = "metric alert"
  message = "Free Memory Alert on {{host.name}}. Notify: ${var.primary_notifier}"

  query = "avg(last_5m):avg:system.mem.pct_usable{*} <= 0.3"

  thresholds {
    critical          = 0.3
    critical_recovery = 0.5
  }

  notify_no_data = false
  notify_audit   = true
  include_tags   = true

  tags = ["system:memory", "system:core_metrics"]
}

# If 5m load average goes over a particular level, send an alert
resource "datadog_monitor" "check_5m_load_average" {
  name    = "Check the 5 minute load average"
  type    = "metric alert"
  message = "Load Average Alert on {{host.name}}. Notify: ${var.primary_notifier}"

  query = "avg(last_5m):avg:system.load.5{*}"

  thresholds {
    critical          = 1
    critical_recovery = 0.7
  }

  notify_no_data = false
  notify_audit   = true
  include_tags   = true

  tags = ["system:memory", "system:core_metrics"]
}
