FROM nethermind/nethermind:1.16.0
WORKDIR /opt/el
COPY config/ /opt/el/config/
COPY entrypoint/start-el.sh /usr/local/bin/start-el.sh
RUN chmod +x /usr/local/bin/start-el.sh
EXPOSE 8545 30303/tcp 30303/udp
ENTRYPOINT ["/usr/local/bin/start-el.sh"]
