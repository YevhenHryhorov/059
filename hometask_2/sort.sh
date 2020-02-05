#!/bin/bash
file=$1
sort -V "$file" | uniq
