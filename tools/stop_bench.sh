#!/bin/bash
#ssh root@172.19.0.4 "pkill ifstat" |
#ssh root@172.19.0.4 "pkill pidstat" |
#ssh root@172.19.0.4 "pkill sleep" |
ssh root@172.19.0.4 "pkill top" |
ssh root@172.19.0.4 "pkill tcpdump" |
ssh root@172.19.0.4 "pkill python" | 
ssh root@172.19.0.4 "pkill NVML" |

#ssh root@172.19.0.5 "pkill ifstat" |
#ssh root@172.19.0.5 "pkill pidstat" |
#ssh root@172.19.0.5 "pkill sleep" |
ssh root@172.19.0.5 "pkill top" |
ssh root@172.19.0.5 "pkill tcpdump" |
ssh root@172.19.0.5 "pkill python" |
ssh root@172.19.0.5 "pkill NVML" |

#ssh root@172.19.0.6 "pkill ifstat" |
#ssh root@172.19.0.6 "pkill pidstat" |
#ssh root@172.19.0.6 "pkill sleep" |
ssh root@172.19.0.6 "pkill top" |
ssh root@172.19.0.6 "pkill tcpdump" |
ssh root@172.19.0.6 "pkill python" |
ssh root@172.19.0.6 "pkill NVML" 

