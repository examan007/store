#!/bin/bash
JARFILE=target/store-1.0-SNAPSHOT-standalone.jar;export JARFILE
CLASSJAR=/home/jhayes/store/postgresql-42.2.0.jre7.jar;export CLASSJAR
COMMAND="java -jar ${JARFILE}"
echo ${COMMAND} ${1} ${2} ${3}
${COMMAND} ${1} ${2} ${3} ${4} ${5} ${6}

