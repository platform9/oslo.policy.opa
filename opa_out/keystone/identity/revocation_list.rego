package identity.revocation_list

import data.keystone_lib

# List revoked PKI tokens.
# GET  /v3/auth/tokens/OS-PKI/revoked
# Intended scope(s): system, project
# "identity:revocation_list": "rule:service_or_admin"

allow if {
	keystone_lib.service_or_admin
}
