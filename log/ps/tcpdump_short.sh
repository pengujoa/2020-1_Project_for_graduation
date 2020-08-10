#!/bin/bash
tcpdump -i eth0 -c 200000 -w /mxnet/log/ps/ps_net_short.pcap 
