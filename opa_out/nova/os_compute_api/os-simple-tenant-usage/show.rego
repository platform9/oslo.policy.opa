package os_compute_api.os_simple_tenant_usage.show

import data.lib

# Show usage statistics for a specific tenant
# GET  /os-simple-tenant-usage/{tenant_id}
# Intended scope(s): project
#"os_compute_api:os-simple-tenant-usage:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

