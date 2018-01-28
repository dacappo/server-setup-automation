#!/bin/bash
echo "[Setup] Loading scripts"
for entry in src/*
do
   echo "[${entry:4}] ..."
   source $entry 1> /dev/null
   if [ $? -eq 0 ]
   then
      echo "[${entry:4}] ✔"
   else
      echo "[${entry:4}] ❌"
      exit 1
   fi
done
echo "[Setup] Finished"
