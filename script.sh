#!/usr/bin/bash
. config.cfg
#Trackma parcing
index=()
name=()
watched=()
max=()
score=()
re='[0-9]'
re2='[0-9?]'
printf "$trackma_account\nq\n" | trackma account > /dev/null
printf "$trackma_account\n" | trackma retrieve > /dev/null
. config.cfg
currentlywatching=$(printf "$trackma_account\n" | LINES=25 COLUMNS=200  trackma list | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g")
i=0
p=0
g=0
h=0
while [ $i -le ${#currentlywatching} ]
do
    if (($i > 208))
    then
        #index
        if [[ ${currentlywatching:$i:1} =~ $re ]] && (($p == 0))
        then
            index[$g]="${index[$g]}${currentlywatching:$i:1}"
            if [[ ${currentlywatching:$i+1:1} == *[[:space:]]* ]]
            then
                p=$((p+1))
                h=$i
            fi
        fi
        #name
        if (($p == 1)) && (($i > $(($h+3))))
        then
            name[$g]="${name[$g]}${currentlywatching:$i:1}"
            if [[ ${currentlywatching:$i+1:1} == "." ]]
            then
                if [[ ${currentlywatching:$i+2:1} == "." ]]
                then
                    if [[ ${currentlywatching:$i+3:1} == "." ]]
                    then
                        if [[ ${currentlywatching:$i+4:1} == "." ]]
                        then
                            p=$((p+1))
                        fi
                    fi
                fi
            fi
        fi
        #unused score
        if [[ ${currentlywatching:$i:1} =~ $re ]] && (($p == 4))
        then
            score[$g]="${score[$g]}${currentlywatching:$i:1}"
            if [[ ${currentlywatching:$i+1:1} == *[[:space:]]* ]]
            then
                p=$((p+1))
            fi
        fi
        #max
        if [[ ${currentlywatching:$i:1} =~ $re2 ]] && (($p == 3))
        then
            max[$g]="${max[$g]}${currentlywatching:$i:1}"
            if [[ ${currentlywatching:$i+1:1} == *[[:space:]]* ]]
            then
                p=$((p+1))
            fi
        fi
        #watched
        if [[ ${currentlywatching:$i:1} =~ $re ]] && (($p == 2))
        then
            watched[$g]="${watched[$g]}${currentlywatching:$i:1}"
            if [[ ${currentlywatching:$i+1:1} == *[[:space:]]* ]]
            then
                p=$((p+1))
            fi
        fi
    fi
    i=$((i+1))
    if (($p == 5))
    then
        p=0
        g=$((g+1))
    fi
done
i=0
unset index[-1]
unset name[-1]
while [ $i -le $g ]
do
echo ${index[$i]} ${name[$i]} ${watched[$i]} ${max[$i]}
i=$((i+1))
done
echo
#EOF
#rm tmp
