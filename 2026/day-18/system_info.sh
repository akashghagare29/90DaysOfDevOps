#!/bin/bash

# Create system_info.sh that uses functions for everything:
# 1. A function to print hostname and OS info
# 2. A function to print uptime
# 3. A function to print disk usage (top 5 by size)
# 4. A function to print memory usage
# 5. A function to print top 5 CPU-consuming processes
# 6. A main function that calls all of the above with section headers
# 7. Use set -euo pipefail at the top

set -euo pipefail

system_info(){
        echo "==== Hostname and OS info ===="
        hostname
        uname -a

        echo "==== Uptime ===="
        uptime

        echo "==== Disk usgae ===="
        du -sh * 2>/dev/null | sort -rh | head -n 5

        echo "==== Memory usage ===="
        free -m

        echo "=== Top 5 CPU-consuming processes ===="
        ps aux --sort=-%cpu | head -n 6
}

system_info
