package os_compute_api_servers_show_flavor_extra_specs_test

import data.os_compute_api.servers.show.flavor_extra_specs

test_flavor_extra_specs_0 if flavor_extra_specs.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_flavor_extra_specs_1 if flavor_extra_specs.allow with input as {"credentials": {"roles": ["admin"]}}
