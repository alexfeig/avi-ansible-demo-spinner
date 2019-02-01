#! /bin/bash
for run in {1..10}
  do curl https://$1 -k
done
