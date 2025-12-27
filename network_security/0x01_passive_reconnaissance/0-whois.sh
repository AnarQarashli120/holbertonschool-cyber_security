#!/bin/bash
#!/bin/bash
whois "$1" | awk -F':' '/^(Registrant|Admin|Tech)/{v=$0;sub(/^[^:]*:[[:space:]]*/,"",v);s=$1;f=$2;if(f~"Street")printf "%s %s,%s \n",s,f,v;else if(f~"Phone Ext|Fax Ext")printf "%s %s:,%s\n",s,f,v;else printf "%s %s,%s\n",s,f,v}' > "$1.csv"
