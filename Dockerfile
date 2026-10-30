FROM alpine:3

# RUN apk add --no-cache curl openssl

# COPY ./scepclient-linux-amd64 /usr/bin/scepclient
COPY ./scepserver-linux-amd64 /usr/bin/scepserver

EXPOSE 8080

VOLUME ["/depot"]

# RUN /usr/bin/scepserver ca -init
# RUN curl 'http://localhost/scep?operation=GetCACert' | openssl x509 -inform DER > ca.pem 

ENTRYPOINT ["/usr/bin/scepserver"]
