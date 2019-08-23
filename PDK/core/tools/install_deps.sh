#!/bin/bash
# Please run this script as root.

if [ -s /etc/redhat-release ]; then
    # Includes Fedora, CentOS
    sudo yum install CUnit-devel
    sudo yum install libaio-devel
    sudo yum install tbb tbb-devel
    sudo yum install openssl
    sudo yum install numactl-devel

    sudo yum install libev-devel
    sudo yum install boost boost-thread boost-devel

elif [ -f /etc/debian_version ]; then
    # Includes Ubuntu, Debian
    apt-get install -y g++ cmake libcunit1-dev libaio-dev libtbb-dev openssl libnuma-dev libboost-dev libev-dev

else
    echo "unsupported system type."
    exit 1
fi
