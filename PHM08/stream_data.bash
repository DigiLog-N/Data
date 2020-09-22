#!/bin/bash
#
# Stream content from the specified file, line
# by line, out via UDP.
#
# https://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/
# https://stackoverflow.com/questions/9696129/how-to-send-only-one-udp-packet-with-netcat
#
file_name=$1
echo "Input filename = $file_name"
lineIdx=0
while IFS= read -r line
do
  # Occasionally display the line to stdout
  ((lineIdx=lineIdx+1))
  if [ "$lineIdx" == 10 ]; then 
    echo "$line"
    lineIdx=0
  fi
  # echo "$line" > /dev/udp/127.0.0.1/7000
  # The "-w0" parameter specifies to timeout
  # right after sending this line (otherwise,
  # the nc command would just wait and not
  # terminate).
  echo "$line" | nc -w0 -4u 192.168.2.61 7000
  sleep 1
done < "$file_name"
