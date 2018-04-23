#!/usr/bin/env bash

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

. "$ROOT"/bin/lib/exitCheck.sh

# Google doesn't provide downloads of a specific version. Only most recent.
# So, we'll check that it's installed
EXPECTED_VERSION="Cloud SQL Proxy"

# Check for existing installation
if [ -e "$ROOT"/bin/cloud_sql_proxy ]; then
    echo "Checking SQL Proxy installation..."
    FOUND_VERSION=`"$ROOT"/bin/cloud_sql_proxy --version`

    # Check version of installed sql proxy
    if [[ "$FOUND_VERSION" = "$EXPECTED_VERSION"* ]]; then
        # Version is as expected. We're done.
        echo "${EXPECTED_VERSION} already installed."
        exit 0
    else
        # Version does not match. Remove it.
        echo "Removing "$ROOT"/bin/cloud_sql_proxy..."
        rm "$ROOT"/bin/cloud_sql_proxy
        exitCheck $?
    fi
fi

# Install composer
echo "Installing ${EXPECTED_VERSION}..."
os=`uname -s | tr A-Z a-z` # darwin or linux. tr lower-cases it

arch=`uname -m`
[ "$arch" == x86_64 ] && arch=amd64
[ "$arch" == i386 ] && arch=386
download="https://dl.google.com/cloudsql/cloud_sql_proxy.${os}.${arch}"

echo "Downloading $download ..."
curl -L "$download" > "$ROOT"/bin/cloud_sql_proxy
exitCheck $?

# Fix permissions
echo "Setting sql proxy permissions..."
chmod 755 "$ROOT"/bin/cloud_sql_proxy
exitCheck $?

echo "${EXPECTED_VERSION} installation complete."
