package update_port_data_plane_status_test

import data.update_port.data_plane_status

test_admin_only_or_data_plane_integrator_0 if data_plane_status.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_data_plane_integrator_1 if data_plane_status.allow with input as {"credentials": {"roles": ["data_plane_integrator"]}}
