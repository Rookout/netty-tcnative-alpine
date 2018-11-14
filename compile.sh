#!/bin/sh

git clone https://github.com/netty/netty-tcnative
cd netty-tcnative
git checkout tags/$NETTY_TCNATIVE_TAG
mvn clean package -pl boringssl-static -am

cd /output/
unzip /netty-tcnative/boringssl-static/target/netty-tcnative-boringssl-static-2.0.17.Final-linux-x86_64.jar META-INF/native/libnetty_tcnative.so
zip -r librook-netty-tcnative-boringssl-static-2.0.17-Final.zip META-INF
rm -rf META-INF

