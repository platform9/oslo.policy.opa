package os_compute_api.os_tenant_networks.show

import data.lib

# Show project network details.
#
# This API is proxy calls to the Network service. This is deprecated.
# GET  /os-tenant-networks/{network_id}
# Intended scope(s): project
#"os_compute_api:os-tenant-networks:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

