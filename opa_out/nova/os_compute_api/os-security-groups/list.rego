package os_compute_api.os_security_groups.list

import data.lib

# List security groups of server.
# GET  /servers/{server_id}/os-security-groups
# Intended scope(s): project
#"os_compute_api:os-security-groups:list": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

