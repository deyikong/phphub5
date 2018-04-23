# us.gcr.io/raven-185914/api-datastore
FROM google/cloud-sdk:alpine

RUN apk --update add openjdk8-jre && rm -rf /tmp/*
RUN gcloud components install beta cloud-datastore-emulator -q && rm -rf /google-cloud-sdk/.install/.backup

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
