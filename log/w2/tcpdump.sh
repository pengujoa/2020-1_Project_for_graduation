#!/bin/bash
tcpdump -i eth0 -s 100 -w /mxnet/log/w2/w2_net.pcap
