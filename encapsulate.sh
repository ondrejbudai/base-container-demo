#!/usr/bin/env bash

set -euo pipefail

repo="$1"

commit_id="$(cat "${repo}/refs/heads/osbuild/images/ostree/test")"

rpm-ostree compose container-encapsulate "${commit_id}" oci-archive:ostree-container.tar --format-version=1 --repo="${repo}"
