#!/bin/bash

# Usage
# for 10 min time count we can run following command
# bash timecount.sh 10

Eseconds=${1}*60  # converting into seconds


Timecount(){
        ts=${1}
        H=$(( ${ts} / 60/60 ))
        M=$(( (${ts} - (60*60*${H})) / 60 ))
        S=$(( ${ts} - ( (60*60*${H}) + (60*${M}) )  ))
     while [ $H -ge 0 ]; do
        while [ $M -ge 0 ]; do
                while [ $S -ge 0 ]; do
                        printf "%02d:%02d:%02d\033[0K\r" $H $M $S
                        S=$((S-1))
                        sleep 1
                done
                S=59
                M=$((M-1))
        done
        M=59
        H=$((H-1))
     done
}

Timecount $Eseconds
