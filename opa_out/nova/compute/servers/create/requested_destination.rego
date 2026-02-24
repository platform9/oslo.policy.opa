package compute.servers.create.requested_destination

import data.lib

# Create a server on the requested compute service host and/or
# hypervisor_hostname.
#
# In this case, the requested host and/or hypervisor_hostname is
# validated by the scheduler filters unlike the
# ``os_compute_api:servers:create:forced_host`` rule.
# POST  /servers
# Intended scope(s): project
#"compute:servers:create:requested_destination": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

