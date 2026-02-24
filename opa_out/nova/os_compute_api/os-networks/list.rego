package os_compute_api.os_networks.list

import data.lib

# List networks for the project.
#
# This API is proxy calls to the Network service. This is deprecated.
# GET  /os-networks
# Intended scope(s): project
#"os_compute_api:os-networks:list": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

