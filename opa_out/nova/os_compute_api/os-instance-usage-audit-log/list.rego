package os_compute_api.os_instance_usage_audit_log.list

import data.nova_lib

# List all usage audits.
# GET  /os-instance_usage_audit_log
# Intended scope(s): project
# "os_compute_api:os-instance-usage-audit-log:list": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
