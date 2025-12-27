#!/bin/bash
whois "$1" | awk -F': *' '/^(Registrant|Admin|Tech)/{s=$1;f=$2;v=$3;if(f=="Street")printf "%s %s, %s \n",s,f,v;else if(f=="Phone Ext"||f=="Fax Ext")printf "%s %s:, %s\n",s,f,v;else printf "%s %s, %s\n",s,f,v}' > "$1.csv"
