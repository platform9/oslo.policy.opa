package os_compute_api.os_hosts.reboot

import data.lib

# Reboot physical host.
#
# This API is deprecated in favor of os-hypervisors and os-services.
# GET  /os-hosts/{host_name}/reboot
# Intended scope(s): project
#"os_compute_api:os-hosts:reboot": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

