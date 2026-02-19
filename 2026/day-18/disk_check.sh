#!/bin/bash

# Create disk_check.sh with:
# A function check_disk that checks disk usage of / using df -h
# A function check_memory that checks free memory using free -h
# A main section that calls both and prints the results

memory_usage(){

        echo "====== Free Memory ========"
        free -h

}

disk_usage(){

        echo "====== Disk Usage ========"
        df -h / | awk 'NR==1 || NR==2'
}

check_memory_usage(){
        echo "========= System Health Check ==========="
        memory_usage
        disk_usage
}

check_memory_usage
