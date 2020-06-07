#!/usr/bin/env bash

IFS=$'\n'
count=0
last_message=
for message in $(git log --format="%s"); do
    [[ -z ${last_message} ]] && last_message=${message}
    [[ ${last_message} = ${message} ]] && ((count=count+1)) || break
done

echo "(${count}) $last_message"

