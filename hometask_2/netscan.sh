#!/bin/bash
range=$1
port=(443 80)

portopen()
{ 
timeout 0.5s /bin/bash -c "echo EOF > /dev/tcp/$i/$u"
if [ $? -eq 0 ]; then
    echo "Port $u for $i is open"
else
    echo "Port $u for $i is closed"
fi
}

for i in $1.{0..255} 
do
for u in ${port[*]}
do 
portopen "$i/$u"
done
done
