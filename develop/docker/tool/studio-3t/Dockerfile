FROM ubuntu

LABEL author="auho auho@163.com"

RUN apt-get update \
    && apt-get install -y libxi6 libxtst6 libxrender1 libgtk-3-dev libssl1.0.0 fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming \
    && apt-get autoclean \
    && apt-get autoremove

COPY studio-3t-linux-x64.sh /opt/studio-3t-linux-x64.sh
COPY cmd.sh /opt/cmd.sh

RUN chmod a+x /opt/cmd.sh

CMD ["/opt/cmd.sh"]