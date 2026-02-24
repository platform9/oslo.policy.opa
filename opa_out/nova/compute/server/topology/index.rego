package compute.server.topology.index

import data.lib

# Show the NUMA topology data for a server
# GET  /servers/{server_id}/topology
# Intended scope(s): project
#"compute:server:topology:index": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

