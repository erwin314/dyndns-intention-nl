# dyndns-intention-nl
Set a DNS record at intention.nl to the external IP address of a network behind NAT.

## usage: ##

wget https://github.com/erwin314/dyndns-intention-nl/archive/master.zip &&
unzip master.zip &&
rm master.zip &&
cd dyndns-intention-nl-master

docker build -t dyndns-intention-nl .

docker create \
 --name dyndns \
 --restart unless-stopped \
 -e "USER=cNNNN" \
 -e "PASS=YOUR_PASS_HERE" \
 -e "DNSENTRY=your.server.nl" \
 dyndns-intention-nl

docker start dyndns

