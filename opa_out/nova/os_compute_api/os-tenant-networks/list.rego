package os_compute_api.os_tenant_networks.list

import data.lib

# List project networks.
#
# This API is proxy calls to the Network service. This is deprecated.
# GET  /os-tenant-networks
# Intended scope(s): project
#"os_compute_api:os-tenant-networks:list": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

