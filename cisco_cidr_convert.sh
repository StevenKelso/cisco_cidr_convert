#!/bin/bash
#
# =================================== #
# Script Name: cisco_cidr_convert.sh
# Author: Steven Kelso
# Description: takes a text file of subnets in cidr notation and formats it in netmask in Cisco ASA style
# Usage: ./cisco_cidr_convert.sh <file.txt>
# =================================== #

# remove leading and trailing whitespace
sed -i 's/^[[:space:]]*//; s/[[:space:]]*$//' $1

# sort the file numerically by cidr
sort -t / -k 2 $1 -o $1

# insert "network-object" at the start of every line
sed -i 's/^/network-object /' $1

# replace every cidr with the netmask equivalent
sed -i 's#/8$# 255.0.0.0#' $1
sed -i 's#/9$# 255.128.0.0#' $1
sed -i 's#/10$# 255.192.0.0#' $1
sed -i 's#/11$# 255.224.0.0#' $1
sed -i 's#/12$# 255.240.0.0#' $1
sed -i 's#/13$# 255.248.0.0#' $1
sed -i 's#/14$# 255.252.0.0#' $1
sed -i 's#/15$# 255.254.0.0#' $1
sed -i 's#/16$# 255.255.0.0#' $1
sed -i 's#/17$# 255.255.128.0#' $1
sed -i 's#/18$# 255.255.192.0#' $1
sed -i 's#/19$# 255.255.224.0#' $1
sed -i 's#/20$# 255.255.240.0#' $1
sed -i 's#/21$# 255.255.248.0#' $1
sed -i 's#/22$# 255.255.252.0#' $1
sed -i 's#/23$# 255.255.254.0#' $1
sed -i 's#/24$# 255.255.255.0#' $1
sed -i 's#/25$# 255.255.255.128#' $1
sed -i 's#/26$# 255.255.255.192#' $1
sed -i 's#/27$# 255.255.255.224#' $1
sed -i 's#/28$# 255.255.255.240#' $1
sed -i 's#/29$# 255.255.255.248#' $1
sed -i 's#/30$# 255.255.255.252#' $1
sed -i 's#/31$# 255.255.255.254#' $1
sed -i 's#/32$# 255.255.255.255#' $1
