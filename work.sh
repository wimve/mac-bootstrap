#!/bin/bash

#	Run bootstrap script and work playbook

set -e

sh scripts/install-requirements.sh

# Should be SUDO to get around https://github.com/ansible/ansible-modules-core/issues/4092
sudo ansible-playbook work.yml -K "$@"
