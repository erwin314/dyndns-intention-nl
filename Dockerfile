FROM busybox

#
# docker build -t dyndns-intention-nl .
# docker create --name dyndns -e "USER=cxxx" -e "PASS=..." -e "DNSENTRY=myhost.mydomain.nl" dyndns-intention-nl
# docker start dyndns
#

ENV USER=cxxxx
ENV PASS=somepass
ENV HOSTNAME=myserver.mydomain.nl
COPY refreshdns.sh /refreshdns.sh
RUN chmod +x /refreshdns.sh

CMD /refreshdns.sh
