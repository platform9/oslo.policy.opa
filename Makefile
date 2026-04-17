-include .env

OUTPUT_DIR ?= $(CURDIR)/opa_policies
POLICY_DIR ?= $(CURDIR)/oslo_policies

.PHONY: generate fmt clean

generate:
	@test -n "$(KEYSTONE_IMAGE)" || { echo "error: set service images in .env (see .env.example)"; exit 1; }
	KEYSTONE_IMAGE=$(KEYSTONE_IMAGE) \
	NOVA_IMAGE=$(NOVA_IMAGE) \
	CINDER_IMAGE=$(CINDER_IMAGE) \
	NEUTRON_IMAGE=$(NEUTRON_IMAGE) \
	GLANCE_IMAGE=$(GLANCE_IMAGE) \
	./tools/generate_mixed_release_opa_out.sh $(OUTPUT_DIR) $(POLICY_DIR)
	@if command -v opa >/dev/null 2>&1; then \
		echo "formatting with opa fmt"; \
		find $(OUTPUT_DIR) -name '*.rego' -exec opa fmt -w {} +; \
	else \
		echo "warning: opa not found, skipping format pass"; \
	fi

fmt:
	@command -v opa >/dev/null 2>&1 || { echo "error: opa not found"; exit 1; }
	find $(OUTPUT_DIR) -name '*.rego' -exec opa fmt -w {} +

clean:
	rm -rf $(OUTPUT_DIR)
