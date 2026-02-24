package os_compute_api.os_hosts.shutdown

import data.lib

# Shutdown physical host.
#
# This API is deprecated in favor of os-hypervisors and os-services.
# GET  /os-hosts/{host_name}/shutdown
# Intended scope(s): project
#"os_compute_api:os-hosts:shutdown": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

