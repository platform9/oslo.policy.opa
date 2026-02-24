package compute.server.topology.host.index

import data.lib

# Show the NUMA topology data for a server with host NUMA ID and CPU
# pinning information
# GET  /servers/{server_id}/topology
# Intended scope(s): project
#"compute:server:topology:host:index": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

