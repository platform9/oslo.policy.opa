package os_compute_api.servers.show.host_status

import data.lib

# Show a server with additional host status information.
#
# This means host_status will be shown irrespective of status value.
# If showing only host_status UNKNOWN is desired, use the
# ``os_compute_api:servers:show:host_status:unknown-only`` policy
# rule.
#
# Microvision 2.75 added the ``host_status`` attribute in the ``PUT
# /servers/{server_id}`` and ``POST /servers/{server_id}/action
# (rebuild)`` API responses which are also controlled by this policy
# rule, like the ``GET /servers*`` APIs.
# GET  /servers/{server_id}
# GET  /servers/detail
# PUT  /servers/{server_id}
# POST  /servers/{server_id}/action (rebuild)
# Intended scope(s): project
#"os_compute_api:servers:show:host_status": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

