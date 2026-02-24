package os_compute_api.os_instance_actions.events.details

import data.lib

# Add "details" key in action events for a server.
#
# This check is performed only after the check os_compute_api:os-
# instance-actions:show passes. Beginning with Microversion 2.84, new
# field 'details' is exposed via API which can have more details about
# event failure. That field is controlled by this policy which is
# system reader by default. Making the 'details' field visible to the
# non-admin user helps to understand the nature of the problem (i.e.
# if the action can be retried), but in the other hand it might leak
# information about the deployment (e.g. the type of the hypervisor).
# GET  /servers/{server_id}/os-instance-actions/{request_id}
# Intended scope(s): project
#"os_compute_api:os-instance-actions:events:details": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

