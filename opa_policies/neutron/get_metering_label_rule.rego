package get_metering_label_rule

import data.neutron_lib

# Get a metering label rule
# GET  /metering/metering-label-rules
# GET  /metering/metering-label-rules/{id}
# Intended scope(s): project
# Target attrs: direction, domain_id, excluded, id, metering_label_id, remote_ip_prefix, tenant_id
# "get_metering_label_rule": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
