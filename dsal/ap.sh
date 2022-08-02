#!/bin/sh

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH

ansible-playbook $@

