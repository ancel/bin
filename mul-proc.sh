#!/bin/sh

# 开n个进程执行某个命令

main(){
    local process_count=$1
    local command=$2
    for ((i=0;i<$process_count;i++))
        do
            { 
                eval "$command" >> log/$i.log 2>&1
            } &
        done 
}


main $1 "$2"
