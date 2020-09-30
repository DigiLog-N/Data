#!/bin/bash
#
# Stream content from the specified file, line
# by line, out via UDP.
#
# https://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/
# https://stackoverflow.com/questions/9696129/how-to-send-only-one-udp-packet-with-netcat
# https://stackoverflow.com/questions/18568706/check-number-of-arguments-passed-to-a-bash-script
#
if [ "$#" -ne 2 ]; then
    echo "Usage: stream_data.bash  <in_file_name>  <out_port>"
    exit 0
fi
file_name=$1
port=$2
echo "Input filename = $file_name"
echo "Port = $port"
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
  echo "$line" | nc -w0 -4u 127.0.0.1 $port
  sleep 1
done < "$file_name"
