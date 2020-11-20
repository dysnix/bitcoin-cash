ARG SRC_IMAGE=bitcoinabc/bitcoin-abc-bchn
ARG SRC_IMAGE_TAG=latest
FROM $SRC_IMAGE:$SRC_IMAGE_TAG

COPY docker-entrypoint.sh /usr/local/bin/
USER bitcoin
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bitcoind"]
