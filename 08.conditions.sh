#!/bin/bash

NUMBER=$1

if [$NUMBER is -gt 100]
then
   echo "Given $NUMBER is greater than 100"
else
   echo "Given $NUMBER is less than 100"
fi