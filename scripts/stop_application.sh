#!/bin/bash
search_terms='java'
pid=$(ps aux | grep "$search_terms" | grep -v 'grep' | awk '{print $2}')
if [ -z "$pid" ]
then
      exit 0
else
      kill -9 "$pid"
fi
