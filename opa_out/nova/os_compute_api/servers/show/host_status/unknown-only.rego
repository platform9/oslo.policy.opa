package os_compute_api.servers.show.host_status.unknown_only

import data.lib

# Show a server with additional host status information, only if host
# status is UNKNOWN.
#
# This policy rule will only be enforced when the
# ``os_compute_api:servers:show:host_status`` policy rule does not
# pass for the request. An example policy configuration could be where
# the ``os_compute_api:servers:show:host_status`` rule is set to allow
# admin-only and the
# ``os_compute_api:servers:show:host_status:unknown-only`` rule is set
# to allow everyone.
# GET  /servers/{server_id}
# GET  /servers/detail
# PUT  /servers/{server_id}
# POST  /servers/{server_id}/action (rebuild)
# Intended scope(s): project
#"os_compute_api:servers:show:host_status:unknown-only": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

