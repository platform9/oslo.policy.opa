package os_compute_api.servers.allow_all_filters

import data.lib

# Allow all filters when listing servers
# GET  /servers
# GET  /servers/detail
# Intended scope(s): project
#"os_compute_api:servers:allow_all_filters": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

