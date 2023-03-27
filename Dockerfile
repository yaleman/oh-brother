FROM sbs20/scanservjs
ARG DEBFILE=brscan.deb
ARG SCANNER_NAME="Brother"
ARG SCANNER_MODEL="example"
ARG SCANNER_IP="127.0.0.1"

COPY ./$DEBFILE "/$DEBFILE"
RUN dpkg -i "/$DEBFILE"
RUN rm "/$DEBFILE"
RUN apt-get update && apt-get -y install iputils-ping && apt-get clean -y
RUN brsaneconfig5 -a name="${SCANNER_NAME}" model="${SCANNER_MODEL}" nodename="${SCANNER_IP}"
