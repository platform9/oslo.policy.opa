package os_compute_api.os_instance_usage_audit_log.show

import data.lib

# List all usage audits occurred before a specified time for all
# servers on all compute hosts where usage auditing is configured
# GET  /os-instance_usage_audit_log/{before_timestamp}
# Intended scope(s): project
#"os_compute_api:os-instance-usage-audit-log:show": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

