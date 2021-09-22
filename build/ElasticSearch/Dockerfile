ARG VERSION=6.6.1
FROM docker.elastic.co/elasticsearch/elasticsearch:${VERSION}

ARG UID=1000

USER root
RUN usermod -u ${UID} elasticsearch
USER elasticsearch

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu

RUN elasticsearch-plugin install analysis-icu
RUN elasticsearch-plugin install analysis-phonetic
COPY ./elasticsearch.sysctl.conf /etc/sysctl.d/
