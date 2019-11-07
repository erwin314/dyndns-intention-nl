
OLDIP="unknown"
while :; do 
  MYIP=`wget -q -O - http://whatismyip.akamai.com/`
  if [ "${MYIP}" != "${OLDIP}" ]; then
    echo "Changing IP from ${OLDIP} to ${MYIP}"
    RESULT=`wget --no-check-certificate -qO- "https://dyndns.intention.nl/update?domain=${USER}&password=${PASS}&hostname=${DNSENTRY}&myip=${MYIP}"`
    echo "Result from intention.nl: ${RESULT}"
    OLDIP="$MYIP"
  fi
  sleep 5m; 
done
