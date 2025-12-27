#!/bin/bash

whois "$1" | awk -F':' '
/^(Registrant|Admin|Tech)/ {

    section=$1
    field=$2
    value=$0

    sub(/^[^:]*:[[:space:]]*/, "", value)

    # Street fields → sonda SPACE olmalıdır
    if (field ~ /Street/) {
        printf "%s %s,%s \n", section, field, value
        next
    }

    # Phone Ext və Fax Ext → colon qalmalıdır
    if (field ~ /Phone Ext|Fax Ext/) {
        printf "%s %s:, %s\n", section, field, value
        next
    }

    printf "%s %s,%s\n", section, field, value
}
END {
    # extra newline olmaması üçün heç nə etmirik
}
' > "$1.csv"
