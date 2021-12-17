#! /bin/bash
USER=URUSER
PASS=URPASSWORD
wget https://10.250.33.254/login --post-data="username=$USER&password=$PASS" --no-check-certificate -O /dev/null -q
