package os_compute_api.servers.create.forced_host

import data.lib

# Create a server on the specified host and/or node.
#
# In this case, the server is forced to launch on the specified host
# and/or node by bypassing the scheduler filters unlike the
# ``compute:servers:create:requested_destination`` rule.
# POST  /servers
# Intended scope(s): project
#"os_compute_api:servers:create:forced_host": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

