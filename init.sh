#!/bin/bash

echo "Check if postgres accepting connections"

#nc -vz localhost 5432
pg_isready -h localhost -p 5432
status=$?

while [ $status != 0 ]
do
  echo "sleeping for 5 seconds"
  sleep 5
  pg_isready -h localhost -p 5432
  status=$?
done
