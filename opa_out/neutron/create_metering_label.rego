package create_metering_label

import data.neutron_lib

# Create a metering label
# POST  /metering/metering-labels
# Intended scope(s): project
# Target attrs: description, domain_id, id, name, shared, tenant_id
# "create_metering_label": "(rule:admin_only) or (role:manager and project_id:%(project_id)s)"

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
