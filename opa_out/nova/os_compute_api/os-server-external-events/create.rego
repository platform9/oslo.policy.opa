package os_compute_api.os_server_external_events.create

import data.lib

# Create one or more external events
# POST  /os-server-external-events
# Intended scope(s): project
#"os_compute_api:os-server-external-events:create": "rule:service_or_admin"


allow if {
  lib.service_or_admin
}

