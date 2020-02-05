#!/bin/bash
file=$1
sort "$file" | uniq -c | sort -rn | head -n 1
