package os_compute_api.os_security_groups.get

import data.lib

# List security groups. This API is deprecated.
# GET  /os-security-groups
# Intended scope(s): project
#"os_compute_api:os-security-groups:get": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

