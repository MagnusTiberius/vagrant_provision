#!/usr/bin/env bash

###############
# SysV Init Information
# description: docker daemon.
### BEGIN INIT INFO
# Provides: me
# Required-Start: 
# Required-Stop: 
# Default-Start: 2 3 5
# Default-Stop: 0 1 6
# Short-Description: manage docker daemon
# Description: docker daemon
### END INIT INFO


HOME=path/to/code
EXEC=docker
NAME="docker"

REPO=petruisfan
CONTAINER=node
LABEL=4.1.2
PORT=9000

case "$1" in
    start)
        RUNNING=`docker inspect -f '{{.State.Running}}'  ${NAME}`

        if [[ ${RUNNING} == "true" ]]; then
            #
            # No need to start it
            #
            echo "Process is running"
            exit 1;
        elif [[ ${RUNNING} == "false" ]]; then 
            #
            # Container created
            #
            echo "Starting container:"
            docker start ${NAME} 
        else 
            echo "Creating '$NAME' container..."

            docker run \
                --name ${NAME} \
                -d -p ${PORT}:${PORT} \
                -v "${HOME}:/opt/mo" \
                --restart=always \
                ${REPO}/${CONTAINER}:${LABEL} 
        fi
        ;;
    stop)
        echo "Stopping $NAME..."

        docker stop -t 2 ${NAME} &> /dev/null

        if [[ 0 != $? ]]; then
            echo "Could not stop container"    
            exit 4;
        fi
        ;;
    status)
        RUNNING=`docker inspect -f '{{.State.Running}}'  ${NAME}`

        if [[ "true" == ${RUNNING} ]]; then
            echo "$NAME is running"
        else
            echo "$NAME is not running"
        fi
        ;;
    inspect)
        docker inspect ${NAME}
        ;;
    logs)
        docker logs ${NAME}
        ;;
    restart)
        $0 stop
        $0 start
        ;;
    *)
        echo "Please use start, stop, restart, inspect or status as first argument"
        ;;
esac
