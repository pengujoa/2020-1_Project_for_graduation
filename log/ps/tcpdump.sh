#!/bin/bash
tcpdump -i eth0 -s 100 -w /mxnet/log/ps/ps_net.pcap
