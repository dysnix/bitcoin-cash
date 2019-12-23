FROM zquestz/bitcoin-abc:latest

COPY docker-entrypoint.sh /usr/local/bin/
USER bitcoin
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bitcoind"]
