package os_compute_api.os_hosts.show

import data.lib

# Show physical host.
#
# This API is deprecated in favor of os-hypervisors and os-services.
# GET  /os-hosts/{host_name}
# Intended scope(s): project
#"os_compute_api:os-hosts:show": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

