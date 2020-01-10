FROM fluentd

LABEL author="auho auho@163.com"

USER root

RUN apk --no-cache add tzdata  && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone 

COPY out_clickhousejson.rb /fluentd/plugins/out_clickhousejson.rb

RUN mkdir -p /var/log/td-agent && \
    chown fluent:fluent /var/log/td-agent

USER fluent