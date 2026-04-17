package volume_extension.services.update

import data.cinder_lib

# Update service, including failover_host, thaw, freeze, disable,
# enable, set-log and get-log actions.
# PUT  /os-services/{action}
# "volume_extension:services:update": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
