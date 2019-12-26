ARG SRC_IMAGE=zquestz/bitcoin-abc
ARG SRC_IMAGE_TAG=latest
FROM $SRC_IMAGE:$SRC_IMAGE_TAG

COPY docker-entrypoint.sh /usr/local/bin/
USER bitcoin
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bitcoind"]
