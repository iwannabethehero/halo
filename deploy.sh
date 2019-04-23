#!/bin/bash

# 指定Halo的根目录，请按实际修改
HALO_DIR="/var/jenkins_home/workspace/halo-blog"

# 进入Halo根目录
cd $HALO_DIR

# 停止Halo
sh $HALO_DIR/bin/halo.sh stop


# 进入打包好的Halo目录
cd $HALO_DIR/target/dist/halo

# 运行Halo
nohup java -server -jar `find ./ -name "halo*.jar"` > /dev/null 2>&1 &

echo "Halo部署完毕，Enjoy！"