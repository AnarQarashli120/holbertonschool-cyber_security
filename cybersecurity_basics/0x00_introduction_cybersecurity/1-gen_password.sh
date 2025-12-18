#!/bin/bash
password=$(tr -dc '[:alnum:]' < /dev/urandom | cut -c1-${1:-16}); echo "$password"
