package delete_metering_label_rule

import data.neutron_lib

# Delete a metering label rule
# DELETE  /metering/metering-label-rules/{id}
# Intended scope(s): project
# Target attrs: direction, domain_id, excluded, id, metering_label_id, remote_ip_prefix, tenant_id
# "delete_metering_label_rule": "(rule:admin_only) or (role:manager and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	manager_and_creds_project_id_eq_input_project_id
}

# (role:manager and project_id:%(project_id)s)
manager_and_creds_project_id_eq_input_project_id if {
	"manager" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
