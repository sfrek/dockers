FROM ruby

RUN \
  gem install fluentd --no-ri --no-rdoc && \
  fluentd --setup && \
  fluent-gem install \
    fluent-plugin-record-modifier \
    fluent-plugin-record-reformer \
    fluent-plugin-rewrite-tag-filter \
    fluent-plugin-elasticsearch --no-ri --no-rdoc

ADD config/fluent.conf /etc/fluent/fluent.conf

VOLUME ["/fluent.d"]

EXPOSE 24224

CMD ["fluentd", "-c", "/etc/fluent/fluent.conf"]
