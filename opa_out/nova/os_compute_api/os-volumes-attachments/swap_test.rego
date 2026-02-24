package os_compute_api_os_volumes_attachments_swap_test

import data.os_compute_api.os_volumes_attachments.swap

test_swap_0 if swap.allow with input as {"credentials": {"roles": ["service"]}}
test_swap_1 if swap.allow with input as {"credentials": {"roles": ["admin"]}}
