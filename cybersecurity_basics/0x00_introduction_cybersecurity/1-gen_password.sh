#!/bin/bash
password=$(tr -dc '[:alnum:]' < /dev/urandom | dd bs=1 count="${1:-16}" 2>/dev/null); echo "$password"
