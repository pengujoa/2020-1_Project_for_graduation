#!/bin/bash
ssh root@172.19.0.4 "sh /mxnet/log/ps/top.sh" |
ssh root@172.19.0.4 "sh /mxnet/log/ps/tcpdump.sh" |
ssh root@172.19.0.4 "sh /mxnet/log/ps/NVML.sh" |
ssh root@172.19.0.5 "sh /mxnet/log/w1/top.sh" |
ssh root@172.19.0.5 "sh /mxnet/log/w1/tcpdump.sh" |
ssh root@172.19.0.5 "sh /mxnet/log/w1/NVML.sh" |
ssh root@172.19.0.6 "sh /mxnet/log/w2/top.sh" |
ssh root@172.19.0.6 "sh /mxnet/log/w2/tcpdump.sh" |
ssh root@172.19.0.6 "sh /mxnet/log/w2/NVML.sh" |

./launch.py -s 1 -n 2 -H /mxnet/tools/hosts --launcher ssh python /mxnet/example/gluon/image_classification.py --dataset cifar10 --model vgg16 --epochs 1 --lr 0.005 --batch-size 512 --gpus 0 --kvstore dist_sync

 
