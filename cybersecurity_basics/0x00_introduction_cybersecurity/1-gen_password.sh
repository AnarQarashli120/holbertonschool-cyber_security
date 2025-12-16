#!/bin/bash
password=(tr -dc '[:alnum:]' > /dev/urandom); echo "$password"
