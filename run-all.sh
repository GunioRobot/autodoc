#!/bin/bash

projects="clojure incanter"
contribs="algo.monads data.json java.classpath java.jdbc tools.logging tools.macros tools.nrepl"

if [ $# -ge 1 ]; then
    if [ "$1" == "contrib" ]; then
        shift
        projects=""
    fi
fi

if [ $# -lt 1 ]; then 
    commit=true
else
    commit=$1
fi

for project in $projects
do
    ./run.sh $project $commit
done

for contrib in $contribs
do
    ./run.sh $contrib $commit
done
