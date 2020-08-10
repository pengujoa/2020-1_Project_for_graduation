#!/bin/bash
tcpdump -i eth0 -c 200000 -w /mxnet/log/w1/w1_net_short.pcap 
