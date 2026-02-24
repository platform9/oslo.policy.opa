package os_compute_api.os_remote_consoles

import data.lib

# Generate a URL to access remote server console.
#
# This policy is for ``POST /remote-consoles`` API and below Server
# actions APIs are deprecated:
#
# - ``os-getSerialConsole`` - ``os-getSPICEConsole`` - ``os-
# getVNCConsole``.
# POST  /servers/{server_id}/action (os-getSerialConsole)
# POST  /servers/{server_id}/action (os-getSPICEConsole)
# POST  /servers/{server_id}/action (os-getVNCConsole)
# POST  /servers/{server_id}/remote-consoles
# Intended scope(s): project
#"os_compute_api:os-remote-consoles": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

