FROM alpine
RUN apk add python3 py3-pip bash wget curl
RUN pip3 install --upgrade pip
RUN pip3 install flask
RUN mkdir /opt/nubevaTools
RUN wget -O /opt/nubevaTools/keydb.py https://nubevalabs.s3.amazonaws.com/keydb/keydb.py
RUN wget -O /opt/nubevaTools/nubedge.ca https://nubevalabs.s3.amazonaws.com/keydb/nubedge.ca
RUN wget -O /opt/nubevaTools/nubedge.pem https://nubevalabs.s3.amazonaws.com/keydb/nubedge.pem
RUN wget -O /opt/nubevaTools/nubedge.key https://nubevalabs.s3.amazonaws.com/keydb/nubedge.key
CMD python3 /opt/nubevaTools/keydb.py
