#!/usr/bin/env sh

until [[ $(curl -sL -w %{http_code}\\n $1 -o /dev/null) == 200 ]]
do
    echo Waiting service
    sleep 2
done

