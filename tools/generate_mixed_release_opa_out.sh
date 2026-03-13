#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="${1:-$ROOT/generated_opa_out}"
POLICY_DIR="${2:-}"

service_release() {
  case "$1" in
    keystone|neutron|glance)
      printf '%s\n' "2024.1"
      ;;
    nova|cinder)
      printf '%s\n' "2025.1"
      ;;
    *)
      echo "error: unknown service: $1" >&2
      return 1
      ;;
  esac
}

build_image() {
  local release="$1"
  local tag="oslo-policy-opa-gen:${release}"
  echo "building image $tag"
  docker build \
    --build-arg "OS_RELEASE=${release}" \
    -t "$tag" \
    "$ROOT"
}

run_generator() {
  local service="$1"
  local release="$2"
  local tag="oslo-policy-opa-gen:${release}"
  local service_out="/out/${service}"
  local cmd=(
    oslopolicy-opa-policy-generator
    --namespace "$service"
    --output-dir "$service_out"
  )

  if [[ -n "$POLICY_DIR" && -f "$POLICY_DIR/${service}.yaml" ]]; then
    cmd+=(--policy-file "/policies/${service}.yaml")
  fi

  echo "generating $service from OpenStack ${release}"

  if [[ -n "$POLICY_DIR" ]]; then
    docker run --rm \
      -v "$OUTPUT_DIR:/out" \
      -v "$POLICY_DIR:/policies:ro" \
      "$tag" \
      "${cmd[@]}"
  else
    docker run --rm \
      -v "$OUTPUT_DIR:/out" \
      "$tag" \
      "${cmd[@]}"
  fi
}

mkdir -p "$OUTPUT_DIR"

build_image "2024.1"
build_image "2025.1"

for service in keystone neutron glance nova cinder; do
  run_generator "$service" "$(service_release "$service")"
done

echo "opa_out written under $OUTPUT_DIR"
