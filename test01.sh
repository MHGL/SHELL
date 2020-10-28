#! /bin/bash

# ping
# -c 尝试次数
# -W 超时时间
# -i 间隔时间

ping -c 4 -W 3 -i 0.3 $1 &>/dev/null

# if/else
# [] 条件表达式 
# (()) 数学表达式
# [[]] 高级字符串表达函数

if [ $? -ne 0 ]
## if (($?))
then
        echo "$1 not online"
else
        echo "$1 online"
fi
