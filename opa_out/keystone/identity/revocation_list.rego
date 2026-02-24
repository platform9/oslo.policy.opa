package identity.revocation_list

import data.lib

# List revoked PKI tokens.
# GET  /v3/auth/tokens/OS-PKI/revoked
# Intended scope(s): system, project
#"identity:revocation_list": "rule:service_or_admin"


allow if {
  lib.service_or_admin
}

