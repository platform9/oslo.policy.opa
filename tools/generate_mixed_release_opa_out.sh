#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="${1:-$ROOT/opa_out}"
POLICY_DIR="${2:-$ROOT/oslo_policies}"

# Service base images, set via .env
: "${KEYSTONE_IMAGE:?Set KEYSTONE_IMAGE in .env (see .env.example)}"
: "${NOVA_IMAGE:?Set NOVA_IMAGE in .env}"
: "${CINDER_IMAGE:?Set CINDER_IMAGE in .env}"
: "${NEUTRON_IMAGE:?Set NEUTRON_IMAGE in .env}"
: "${GLANCE_IMAGE:?Set GLANCE_IMAGE in .env}"

service_image() {
  case "$1" in
    keystone) printf '%s\n' "$KEYSTONE_IMAGE" ;;
    nova)     printf '%s\n' "$NOVA_IMAGE" ;;
    cinder)   printf '%s\n' "$CINDER_IMAGE" ;;
    neutron)  printf '%s\n' "$NEUTRON_IMAGE" ;;
    glance)   printf '%s\n' "$GLANCE_IMAGE" ;;
    *)
      echo "error: unknown service: $1" >&2
      return 1
      ;;
  esac
}

build_image() {
  local service="$1"
  local base_image="$2"
  local tag="oslo-policy-opa-gen:${service}"
  echo "building generator image for $service from $base_image"
  docker build \
    --platform linux/amd64 \
    --build-arg "BASE_IMAGE=${base_image}" \
    -t "$tag" \
    "$ROOT"
}

run_generator() {
  local service="$1"
  local tag="oslo-policy-opa-gen:${service}"
  local service_out="/out/${service}"
  local cmd=(
    --namespace "$service"
    --output-dir "$service_out"
  )

  if [[ -n "$POLICY_DIR" && -f "$POLICY_DIR/${service}.yaml" ]]; then
    cmd+=(--policy-file "/policies/${service}.yaml")
  fi

  if [[ -n "$POLICY_DIR" && -d "$POLICY_DIR/personas" ]]; then
    cmd+=(--persona-dir "/policies/personas")
  fi

  echo "generating $service"

  if [[ -n "$POLICY_DIR" ]]; then
    docker run --rm \
      --platform linux/amd64 \
      -v "$OUTPUT_DIR:/out" \
      -v "$POLICY_DIR:/policies:ro" \
      "$tag" \
      "${cmd[@]}"
  else
    docker run --rm \
      --platform linux/amd64 \
      -v "$OUTPUT_DIR:/out" \
      "$tag" \
      "${cmd[@]}"
  fi
}

mkdir -p "$OUTPUT_DIR"

for service in keystone neutron glance nova cinder; do
  base_image="$(service_image "$service")"
  build_image "$service" "$base_image"
  run_generator "$service"
done

echo "opa_out written under $OUTPUT_DIR"
