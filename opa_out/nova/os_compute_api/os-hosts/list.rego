package os_compute_api.os_hosts.list

import data.lib

# List physical hosts.
#
# This API is deprecated in favor of os-hypervisors and os-services.
# GET  /os-hosts
# Intended scope(s): project
#"os_compute_api:os-hosts:list": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

