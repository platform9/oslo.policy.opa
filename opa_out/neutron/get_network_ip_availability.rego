package get_network_ip_availability

import data.lib

# Get network IP availability
# GET  /network-ip-availabilities
# GET  /network-ip-availabilities/{network_id}
# Intended scope(s): project
#"get_network_ip_availability": "(rule:admin_only) or (rule:service_api)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  #rule:service_api
lib.service_api
}

