#!/bin/bash
tcpdump -i eth0 -c 200000 -w /mxnet/log/w2/w2_net_short.pcap 
