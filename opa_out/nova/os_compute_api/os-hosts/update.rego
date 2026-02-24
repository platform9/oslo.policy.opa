package os_compute_api.os_hosts.update

import data.lib

# Update physical host.
#
# This API is deprecated in favor of os-hypervisors and os-services.
# PUT  /os-hosts/{host_name}
# Intended scope(s): project
#"os_compute_api:os-hosts:update": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

