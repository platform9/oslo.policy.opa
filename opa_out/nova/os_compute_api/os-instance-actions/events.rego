package os_compute_api.os_instance_actions.events

import data.lib

# Add events details in action details for a server. This check is
# performed only after the check os_compute_api:os-instance-
# actions:show passes. Beginning with Microversion 2.51, events
# details are always included; traceback information is provided per
# event if policy enforcement passes. Beginning with Microversion
# 2.62, each event includes a hashed host identifier and, if policy
# enforcement passes, the name of the host.
# GET  /servers/{server_id}/os-instance-actions/{request_id}
# Intended scope(s): project
#"os_compute_api:os-instance-actions:events": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

