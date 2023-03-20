#!/bin/bash

# Default directory
DIR="/home/redteam/Bureau/bounty$(date +%Y_%m_%d_%H_%M)"
mkdir -p $DIR
cd $DIR

# Options
ONLY_IPS=false
TCP_SCAN=true
UDP_SCAN=true
PING_SWEEP=true
VULN_SCAN=true
BRUTE_FORCE=true

# Parse options
while getopts ":i:t:u:p:v:b:" opt; do
  case $opt in
    i) ONLY_IPS=$OPTARG;;
    t) TCP_SCAN=$OPTARG;;
    u) UDP_SCAN=$OPTARG;;
    p) PING_SWEEP=$OPTARG;;
    v) VULN_SCAN=$OPTARG;;
    b) BRUTE_FORCE=$OPTARG;;
    \?) echo "Invalid option -$OPTARG" >&2;;
  esac
done

# Ask for IPs if not specified
if [ $ONLY_IPS == false ]; then
  read -p "Enter the path to a file of IP addresses: " IP_FILE
  IPS=$(cat $IP_FILE)
  echo $IPS > ips.txt
else
  # Generate list of IPs
  ip addr show | grep 'inet ' | awk '{print $2}' | sed 's/\/.*//' > ips.txt
fi

# Loop through each IP and run the tools
for IP in $(cat ips.txt); do
  # TCP scan
  if [ $TCP_SCAN == true ]; then
    nmap -sS -p- -oA tcp-scan-$IP --open $IP
  fi

  # UDP scan
  if [ $UDP_SCAN == true ]; then
    nmap -sU --top-ports 1000 -oA udp-scan-$IP --open $IP
  fi

  # Ping sweep
  if [ $PING_SWEEP == true ]; then
    nmap -sn -oA ping-sweep-$IP $IP
  fi

  # Vulnerability scanning
  if [ $VULN_SCAN == true ]; then
    mkdir vuln-scan-$IP
    cd vuln-scan-$IP
    nmap -sS -sV --version-all --script vuln $IP
    cd ..
  fi

  # Brute force
  if [ $BRUTE_FORCE == true ]; then
    mkdir brute-force-$IP
    cd brute-force-$IP
    hydra -L users.txt -P passwords.txt $IP ssh
    cd ..
  fi
done

echo "Done"
