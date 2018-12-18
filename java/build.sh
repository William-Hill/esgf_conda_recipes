# pwd
# ls
# # curl -v -j -k -L -H -o jdk.tar.gz -L 'https://aims1.llnl.gov/esgf/dist/2.7/1/java/1.8.0_192/jdk1.8.0_192-64.tar.gz'
#
# wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "https://download.oracle.com/otn-pub/java/jdk/8u192-b12/750e1c8617c5452694857ad95c3ee230/jdk-8u192-linux-x64.tar.gz"
#
# tar -xzvf jdk-8u192-linux-x64.tar.gz
# # mv jdk1.8.0_192 "$PREFIX/jdk"
# # cp jdk1.8.0_192-64.tar.gz $PREFIX/jdk1.8.0_192-64.tar.gz
# # tar zxvf $PREFIX/jdk1.8.0_192-64.tar.gz
# # ln -s /$PREFIX/jdk1.8.0_192 /usr/local/java


#!/bin/bash

#### Download in build because we have to set cookies ####

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "https://download.oracle.com/otn-pub/java/jdk/8u192-b12/750e1c8617c5452694857ad95c3ee230/jdk-8u192-linux-x64.tar.gz"

# Extract files
tar -xzvf jdk-8u192-linux-x64.tar.gz
# mv jdk1.8.0_192 "$PREFIX/jdk"

# # Make symlinks so that things are in the prefix's bin directory
# mkdir -p "$PREFIX/bin"
# cd "$PREFIX/bin"
# for filename in ../jdk/bin/*; do
# 	ln -s $filename $(basename $filename)
# done

# # Make symlinks so that things are in the prefix's lib directory
# mkdir -p "$PREFIX/lib"
# cd "$PREFIX/lib"
# for filename in ../jdk/lib/${lib}/* ../jdk/lib/${lib}/jli/*; do
# 	ln -s $filename $(basename $filename)
# done
