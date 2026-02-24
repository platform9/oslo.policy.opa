package os_compute_api.os_quota_sets.detail

import data.lib

# Show the detail of quota
# GET  /os-quota-sets/{tenant_id}/detail
# Intended scope(s): project
#"os_compute_api:os-quota-sets:detail": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

